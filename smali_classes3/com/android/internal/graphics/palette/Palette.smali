.class public final Lcom/android/internal/graphics/palette/Palette;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/palette/Palette$Filter;,
        Lcom/android/internal/graphics/palette/Palette$Builder;,
        Lcom/android/internal/graphics/palette/Palette$Swatch;,
        Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;
    }
.end annotation


# static fields
.field static final DEFAULT_CALCULATE_NUMBER_COLORS:I = 0x10

.field static final DEFAULT_FILTER:Lcom/android/internal/graphics/palette/Palette$Filter;

.field static final DEFAULT_RESIZE_BITMAP_AREA:I = 0x3100

.field static final LOG_TAG:Ljava/lang/String; = "Palette"

.field static final LOG_TIMINGS:Z = false

.field static final MIN_CONTRAST_BODY_TEXT:F = 4.5f

.field static final MIN_CONTRAST_TITLE_TEXT:F = 3.0f


# instance fields
.field private final mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

.field private final mSelectedSwatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/graphics/palette/Target;",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Target;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsedColors:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 976
    new-instance v0, Lcom/android/internal/graphics/palette/Palette$1;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/Palette$1;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/palette/Palette;->DEFAULT_FILTER:Lcom/android/internal/graphics/palette/Palette$Filter;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Target;",
            ">;)V"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    .line 160
    iput-object p2, p0, Lcom/android/internal/graphics/palette/Palette;->mTargets:Ljava/util/List;

    .line 162
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    .line 163
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette;->mSelectedSwatches:Ljava/util/Map;

    .line 165
    invoke-direct {p0}, Lcom/android/internal/graphics/palette/Palette;->findDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    return-void
.end method

.method private static copyHslValues(Lcom/android/internal/graphics/palette/Palette$Swatch;)[F
    .locals 3

    const/4 v0, 0x3

    .line 437
    new-array v1, v0, [F

    .line 438
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getHsl()[F

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private findDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 6

    .line 426
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 427
    iget-object v4, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 428
    invoke-virtual {v4}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v5

    if-le v5, v1, :cond_0

    .line 430
    invoke-virtual {v4}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v1

    move-object v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;
    .locals 1

    .line 104
    new-instance v0, Lcom/android/internal/graphics/palette/Palette$Builder;

    invoke-direct {v0, p0}, Lcom/android/internal/graphics/palette/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static from(Ljava/util/List;)Lcom/android/internal/graphics/palette/Palette;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;)",
            "Lcom/android/internal/graphics/palette/Palette;"
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/android/internal/graphics/palette/Palette$Builder;

    invoke-direct {v0, p0}, Lcom/android/internal/graphics/palette/Palette$Builder;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Landroid/graphics/Bitmap;I)Lcom/android/internal/graphics/palette/Palette;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object p0

    return-object p0
.end method

.method public static generateAsync(Landroid/graphics/Bitmap;ILcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I",
            "Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Lcom/android/internal/graphics/palette/Palette;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate(Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static generateAsync(Landroid/graphics/Bitmap;Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Lcom/android/internal/graphics/palette/Palette;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate(Lcom/android/internal/graphics/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method private generateScore(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Target;)F
    .locals 6

    .line 399
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getHsl()[F

    move-result-object v0

    .line 405
    iget-object v1, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v2

    .line 407
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getSaturationWeight()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v1, :cond_1

    .line 408
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getSaturationWeight()F

    move-result v1

    aget v2, v0, v2

    .line 409
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getTargetSaturation()F

    move-result v5

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 411
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getLightnessWeight()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 412
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getLightnessWeight()F

    move-result v2

    const/4 v5, 0x2

    aget v0, v0, v5

    .line 413
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getTargetLightness()F

    move-result v5

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v4, v0

    mul-float v0, v2, v4

    goto :goto_2

    :cond_2
    move v0, v3

    .line 415
    :goto_2
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getPopulationWeight()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 416
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getPopulationWeight()F

    move-result p2

    .line 417
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result p1

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    mul-float v3, p2, p1

    :cond_3
    add-float/2addr v1, v0

    add-float/2addr v1, v3

    return v1
.end method

.method private generateScoredTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 2

    .line 365
    invoke-direct {p0, p1}, Lcom/android/internal/graphics/palette/Palette;->getMaxScoredSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Target;->isExclusive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 368
    iget-object p0, p0, Lcom/android/internal/graphics/palette/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_0
    return-object v0
.end method

.method private getMaxScoredSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 7

    .line 376
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 377
    iget-object v4, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 378
    invoke-direct {p0, v4, p1}, Lcom/android/internal/graphics/palette/Palette;->shouldBeScoredForTarget(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Target;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 379
    invoke-direct {p0, v4, p1}, Lcom/android/internal/graphics/palette/Palette;->generateScore(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Target;)F

    move-result v5

    if-eqz v2, :cond_0

    cmpl-float v6, v5, v1

    if-lez v6, :cond_1

    :cond_0
    move-object v2, v4

    move v1, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private shouldBeScoredForTarget(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Target;)Z
    .locals 5

    .line 392
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getHsl()[F

    move-result-object v0

    const/4 v1, 0x1

    .line 393
    aget v2, v0, v1

    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getMinimumSaturation()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    aget v2, v0, v1

    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getMaximumSaturation()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 v2, 0x2

    aget v3, v0, v2

    .line 394
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getMinimumLightness()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    aget v0, v0, v2

    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Target;->getMaximumLightness()F

    move-result p2

    cmpg-float p2, v0, p2

    if-gtz p2, :cond_0

    iget-object p0, p0, Lcom/android/internal/graphics/palette/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    .line 395
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method generate()V
    .locals 5

    .line 355
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 356
    iget-object v2, p0, Lcom/android/internal/graphics/palette/Palette;->mTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/graphics/palette/Target;

    .line 357
    invoke-virtual {v2}, Lcom/android/internal/graphics/palette/Target;->normalizeWeights()V

    .line 358
    iget-object v3, p0, Lcom/android/internal/graphics/palette/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/android/internal/graphics/palette/Palette;->generateScoredTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    :cond_0
    iget-object p0, p0, Lcom/android/internal/graphics/palette/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method public getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I
    .locals 0

    .line 326
    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result p2

    :cond_0
    return p2
.end method

.method public getDarkMutedColor(I)I
    .locals 1

    .line 307
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result p0

    return p0
.end method

.method public getDarkMutedSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    .line 241
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object p0

    return-object p0
.end method

.method public getDarkVibrantColor(I)I
    .locals 1

    .line 274
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result p0

    return p0
.end method

.method public getDarkVibrantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    .line 211
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->DARK_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object p0

    return-object p0
.end method

.method public getDominantColor(I)I
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result p1

    :cond_0
    return p1
.end method

.method public getDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/android/internal/graphics/palette/Palette;->mDominantSwatch:Lcom/android/internal/graphics/palette/Palette$Swatch;

    return-object p0
.end method

.method public getLightMutedColor(I)I
    .locals 1

    .line 296
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result p0

    return p0
.end method

.method public getLightMutedSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    .line 231
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object p0

    return-object p0
.end method

.method public getLightVibrantColor(I)I
    .locals 1

    .line 263
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result p0

    return p0
.end method

.method public getLightVibrantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    .line 201
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->LIGHT_VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object p0

    return-object p0
.end method

.method public getMutedColor(I)I
    .locals 1

    .line 285
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result p0

    return p0
.end method

.method public getMutedSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    .line 221
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->MUTED:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object p0

    return-object p0
.end method

.method public getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/android/internal/graphics/palette/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/graphics/palette/Palette$Swatch;

    return-object p0
.end method

.method public getSwatches()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object p0, p0, Lcom/android/internal/graphics/palette/Palette;->mSwatches:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTargets()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Target;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object p0, p0, Lcom/android/internal/graphics/palette/Palette;->mTargets:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVibrantColor(I)I
    .locals 1

    .line 252
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/graphics/palette/Palette;->getColorForTarget(Lcom/android/internal/graphics/palette/Target;I)I

    move-result p0

    return p0
.end method

.method public getVibrantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .locals 1

    .line 191
    sget-object v0, Lcom/android/internal/graphics/palette/Target;->VIBRANT:Lcom/android/internal/graphics/palette/Target;

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatchForTarget(Lcom/android/internal/graphics/palette/Target;)Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object p0

    return-object p0
.end method
