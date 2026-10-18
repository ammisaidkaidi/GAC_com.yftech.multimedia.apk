.class public Lcom/android/internal/colorextraction/types/Tonal;
.super Ljava/lang/Object;
.source "Tonal.java"

# interfaces
.implements Lcom/android/internal/colorextraction/types/ExtractionType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;,
        Lcom/android/internal/colorextraction/types/Tonal$ColorRange;,
        Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FIT_WEIGHT_H:F = 1.0f

.field private static final FIT_WEIGHT_L:F = 10.0f

.field private static final FIT_WEIGHT_S:F = 1.0f

.field public static final MAIN_COLOR_DARK:I = -0x1000000

.field public static final MAIN_COLOR_LIGHT:I = -0x1f1f20

.field private static final TAG:Ljava/lang/String; = "Tonal"

.field public static final THRESHOLD_COLOR_DARK:I = -0xdededf

.field public static final THRESHOLD_COLOR_LIGHT:I = -0x1f1f20


# instance fields
.field private final mBlacklistedColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/colorextraction/types/Tonal$ColorRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

.field private mTmpHSL:[F

.field private final mTonalPalettes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 64
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    .line 68
    new-instance v0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;

    invoke-direct {v0, p1}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->getTonalPalettes()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->getBlacklistedColors()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    .line 72
    iget-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    iput-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    .line 73
    iget-object p0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 270
    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const p0, -0x1f1f20

    goto :goto_1

    :cond_1
    const/high16 p0, -0x1000000

    .line 274
    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 275
    invoke-virtual {p1, p0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 276
    invoke-virtual {p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    return-void
.end method

.method private applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 0

    .line 256
    invoke-static {p1, p2}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 257
    invoke-static {p1, p3}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 258
    invoke-static {p1, p4}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    return-void
.end method

.method private static bestFit(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;FFF)I
    .locals 6

    const/4 v0, -0x1

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v2, 0x0

    .line 335
    :goto_0
    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 336
    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    aget v3, v3, v2

    sub-float v3, p1, v3

    .line 337
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    aget v5, v5, v2

    sub-float v5, p2, v5

    .line 338
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    aget v5, v5, v2

    sub-float v5, p3, v5

    .line 339
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    cmpg-float v4, v3, v1

    if-gez v4, :cond_0

    move v0, v2

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .locals 7

    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    .line 359
    iget-object p0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    return-object p0

    :cond_0
    const/4 p2, 0x0

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 365
    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    .line 367
    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    .line 369
    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_1

    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_1

    goto :goto_1

    .line 374
    :cond_1
    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    const/4 v6, 0x0

    if-lez v4, :cond_2

    cmpl-float v4, p1, v6

    if-ltz v4, :cond_2

    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v4}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_2

    goto :goto_1

    .line 379
    :cond_2
    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_3

    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v4}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_3

    cmpg-float v4, p1, v5

    if-gtz v4, :cond_3

    :goto_1
    move-object p2, v3

    goto/16 :goto_4

    .line 384
    :cond_3
    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_4

    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    sub-float/2addr v4, p1

    cmpg-float v4, v4, v0

    if-gez v4, :cond_4

    .line 386
    iget p2, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    sub-float/2addr p2, p1

    :goto_2
    move v0, p2

    move-object p2, v3

    goto :goto_3

    .line 387
    :cond_4
    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_5

    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    sub-float v4, p1, v4

    cmpg-float v4, v4, v0

    if-gez v4, :cond_5

    .line 389
    iget p2, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    sub-float p2, p1, p2

    goto :goto_2

    .line 390
    :cond_5
    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v4}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_6

    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    .line 391
    invoke-static {v4}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v4

    sub-float v4, p1, v4

    cmpg-float v4, v4, v0

    if-gez v4, :cond_6

    .line 393
    iget p2, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {p2}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result p2

    sub-float p2, p1, p2

    goto :goto_2

    .line 394
    :cond_6
    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_7

    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v4}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_7

    iget v4, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    .line 395
    invoke-static {v4}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v4

    sub-float/2addr v4, p1

    cmpg-float v4, v4, v0

    if-gez v4, :cond_7

    .line 397
    iget p2, v3, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {p2}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result p2

    sub-float/2addr p2, p1

    goto :goto_2

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_4
    return-object p2
.end method

.method private static fit([FFIFF)[F
    .locals 2

    .line 312
    array-length v0, p0

    new-array v0, v0, [F

    .line 313
    aget p2, p0, p2

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    .line 315
    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_0

    .line 316
    aget v1, p0, p2

    add-float/2addr v1, p1

    invoke-static {v1, p3, p4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    aput v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static fract(F)F
    .locals 2

    float-to-double v0, p0

    .line 405
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr p0, v0

    return p0
.end method

.method private getColorInt(I[F[F[F)I
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget p2, p2, p1

    invoke-static {p2}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result p2

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr p2, v1

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 281
    iget-object p2, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget p3, p3, p1

    const/4 v0, 0x1

    aput p3, p2, v0

    .line 282
    iget-object p2, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget p1, p4, p1

    const/4 p3, 0x2

    aput p1, p2, p3

    .line 283
    iget-object p0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    invoke-static {p0}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    return p0
.end method

.method private isBlacklisted([F)Z
    .locals 6

    .line 292
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_1

    .line 293
    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;

    .line 294
    aget v2, p1, v2

    aget v4, p1, v1

    const/4 v5, 0x2

    aget v5, p1, v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->containsColor(FFF)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private runTonalExtraction(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return v4

    .line 112
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v6

    .line 113
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v5

    and-int/lit8 v8, v5, 0x1

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    move v8, v9

    goto :goto_0

    :cond_1
    move v8, v4

    :goto_0
    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    move v5, v9

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    if-nez v7, :cond_3

    return v4

    :cond_3
    const/4 v11, 0x3

    .line 128
    new-array v12, v11, [F

    move v13, v4

    :goto_2
    if-ge v13, v7, :cond_5

    .line 130
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Color;

    .line 131
    invoke-virtual {v14}, Landroid/graphics/Color;->toArgb()I

    move-result v15

    .line 132
    invoke-static {v15}, Landroid/graphics/Color;->red(I)I

    move-result v10

    invoke-static {v15}, Landroid/graphics/Color;->green(I)I

    move-result v11

    .line 133
    invoke-static {v15}, Landroid/graphics/Color;->blue(I)I

    move-result v15

    .line 132
    invoke-static {v10, v11, v15, v12}, Lcom/android/internal/graphics/ColorUtils;->RGBToHSL(III[F)V

    if-eqz v5, :cond_6

    .line 136
    invoke-direct {v0, v12}, Lcom/android/internal/colorextraction/types/Tonal;->isBlacklisted([F)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x3

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    :cond_6
    :goto_3
    if-nez v14, :cond_7

    return v4

    .line 151
    :cond_7
    invoke-virtual {v14}, Landroid/graphics/Color;->toArgb()I

    move-result v5

    .line 152
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v6, v7, v5, v12}, Lcom/android/internal/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 157
    aget v5, v12, v4

    const/high16 v6, 0x43b40000    # 360.0f

    div-float/2addr v5, v6

    aput v5, v12, v4

    .line 160
    aget v5, v12, v4

    aget v6, v12, v9

    invoke-direct {v0, v5, v6}, Lcom/android/internal/colorextraction/types/Tonal;->findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    move-result-object v5

    if-nez v5, :cond_8

    const-string v0, "Tonal"

    const-string v1, "Could not find a tonal palette!"

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 167
    :cond_8
    aget v6, v12, v4

    aget v7, v12, v9

    const/4 v10, 0x2

    aget v11, v12, v10

    invoke-static {v5, v6, v7, v11}, Lcom/android/internal/colorextraction/types/Tonal;->bestFit(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;FFF)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_9

    const-string v0, "Tonal"

    const-string v1, "Could not find best fit!"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 174
    :cond_9
    iget-object v7, v5, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    aget v11, v12, v4

    const/high16 v13, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v14, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v7, v11, v6, v13, v14}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v7

    .line 176
    iget-object v11, v5, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    aget v13, v12, v9

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-static {v11, v13, v6, v15, v14}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v11

    .line 177
    iget-object v5, v5, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    aget v12, v12, v10

    invoke-static {v5, v12, v6, v15, v14}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v5

    .line 180
    new-instance v12, Ljava/lang/StringBuilder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Tonal Palette - index: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ". Main color: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {v0, v6, v7, v11, v5}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\nColors: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v13, v4

    .line 184
    :goto_4
    array-length v14, v7

    if-ge v13, v14, :cond_b

    .line 185
    invoke-direct {v0, v13, v7, v11, v5}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    array-length v14, v7

    sub-int/2addr v14, v9

    if-ge v13, v14, :cond_a

    const-string v14, ", "

    .line 187
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_b
    const-string v13, "Tonal"

    .line 190
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {v0, v6, v7, v11, v5}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v12

    .line 198
    iget-object v13, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    invoke-static {v12, v13}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 199
    iget-object v13, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v13, v13, v10

    const v14, -0x1f1f20

    .line 200
    iget-object v15, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    invoke-static {v14, v15}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 201
    iget-object v14, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v14, v14, v10

    cmpl-float v14, v13, v14

    if-lez v14, :cond_c

    return v4

    :cond_c
    const v14, -0xdededf

    .line 205
    iget-object v15, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    invoke-static {v14, v15}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 206
    iget-object v14, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v14, v14, v10

    cmpg-float v13, v13, v14

    if-gez v13, :cond_d

    return v4

    .line 212
    :cond_d
    invoke-virtual {v1, v12}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 213
    invoke-virtual {v1, v12}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    if-eqz v8, :cond_e

    .line 218
    array-length v12, v7

    sub-int/2addr v12, v9

    goto :goto_5

    :cond_e
    if-ge v6, v10, :cond_f

    move v12, v4

    goto :goto_5

    :cond_f
    const/4 v12, 0x3

    .line 222
    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 224
    :goto_5
    invoke-direct {v0, v12, v7, v11, v5}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v12

    .line 225
    invoke-virtual {v2, v12}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 226
    invoke-virtual {v2, v12}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    if-eqz v8, :cond_10

    .line 231
    array-length v4, v7

    sub-int/2addr v4, v9

    goto :goto_6

    :cond_10
    if-ge v6, v10, :cond_11

    goto :goto_6

    :cond_11
    move v4, v10

    .line 237
    :goto_6
    invoke-direct {v0, v4, v7, v11, v5}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v0

    .line 238
    invoke-virtual {v3, v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 239
    invoke-virtual {v3, v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 241
    invoke-virtual {v1, v8}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 242
    invoke-virtual {v2, v8}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 243
    invoke-virtual {v3, v8}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    const-string v0, "Tonal"

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Gradients: \n\tNormal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tDark "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tExtra dark: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9
.end method


# virtual methods
.method public extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 1

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/Tonal;->runTonalExtraction(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    :cond_0
    return-void
.end method

.method public getBlacklistedColors()Ljava/util/List;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/colorextraction/types/Tonal$ColorRange;",
            ">;"
        }
    .end annotation

    .line 351
    iget-object p0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    return-object p0
.end method
