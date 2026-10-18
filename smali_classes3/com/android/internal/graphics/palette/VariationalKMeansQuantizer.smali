.class public Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;
.super Ljava/lang/Object;
.source "VariationalKMeansQuantizer.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KMeansQuantizer"


# instance fields
.field private final mInitializations:I

.field private final mKMeans:Lcom/android/internal/ml/clustering/KMeans;

.field private final mMinClusterSqDistance:F

.field private mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3e800000    # 0.25f

    .line 56
    invoke-direct {p0, v0}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x1

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>(FI)V

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/internal/ml/clustering/KMeans;

    new-instance v1, Ljava/util/Random;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;IF)V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mKMeans:Lcom/android/internal/ml/clustering/KMeans;

    mul-float/2addr p1, p1

    .line 64
    iput p1, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mMinClusterSqDistance:F

    .line 65
    iput p2, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mInitializations:I

    return-void
.end method

.method private getOptimalKMeans(I[[F)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[F)",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;"
        }
    .end annotation

    .line 130
    iget v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mInitializations:I

    const/4 v1, 0x0

    const-wide v2, -0x10000000000001L

    :goto_0
    if-lez v0, :cond_2

    .line 135
    iget-object v4, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mKMeans:Lcom/android/internal/ml/clustering/KMeans;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/ml/clustering/KMeans;->predict(I[[F)Ljava/util/List;

    move-result-object v4

    .line 136
    invoke-static {v4}, Lcom/android/internal/ml/clustering/KMeans;->score(Ljava/util/List;)D

    move-result-wide v5

    if-eqz v1, :cond_0

    cmpl-double v7, v5, v2

    if-lez v7, :cond_1

    :cond_0
    move-object v1, v4

    move-wide v2, v5

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public getQuantizedColors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object p0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object p0
.end method

.method public quantize([II[Lcom/android/internal/graphics/palette/Palette$Filter;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    .line 79
    new-array v3, v2, [F

    fill-array-data v3, :array_0

    .line 80
    array-length v4, v1

    filled-new-array {v4, v2}, [I

    move-result-object v4

    const-class v5, F

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    const/4 v5, 0x0

    move v6, v5

    .line 81
    :goto_0
    array-length v7, v1

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v6, v7, :cond_0

    .line 82
    aget v7, v1, v6

    invoke-static {v7, v3}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 84
    aget-object v7, v4, v6

    aget v11, v3, v5

    div-float/2addr v11, v8

    aput v11, v7, v5

    .line 85
    aget-object v7, v4, v6

    aget v8, v3, v10

    aput v8, v7, v10

    .line 86
    aget-object v7, v4, v6

    aget v8, v3, v9

    aput v8, v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move/from16 v6, p2

    .line 89
    invoke-direct {v0, v6, v4}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->getOptimalKMeans(I[[F)Ljava/util/List;

    move-result-object v1

    move v3, v5

    .line 93
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 94
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 95
    invoke-virtual {v4}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    move v7, v3

    .line 96
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_1

    .line 97
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 98
    invoke-virtual {v11}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v12

    .line 99
    invoke-static {v6, v12}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v13

    .line 101
    iget v14, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mMinClusterSqDistance:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_3

    .line 102
    invoke-interface {v1, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v4}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v11}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v11

    invoke-interface {v13, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v11, v5

    .line 104
    :goto_2
    array-length v13, v6

    if-ge v11, v13, :cond_2

    .line 105
    aget v13, v6, v11

    float-to-double v13, v13

    aget v15, v12, v11

    aget v16, v6, v11

    sub-float v15, v15, v16

    float-to-double v8, v15

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v15

    add-double/2addr v13, v8

    double-to-float v8, v13

    aput v8, v6, v11

    add-int/lit8 v11, v11, 0x1

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x2

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, -0x1

    :cond_3
    add-int/2addr v7, v10

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x2

    goto :goto_1

    .line 113
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 114
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 115
    invoke-virtual {v3}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    .line 118
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v4

    .line 119
    iget-object v6, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v7, Lcom/android/internal/graphics/palette/Palette$Swatch;

    new-array v8, v2, [F

    aget v9, v4, v5

    const/high16 v11, 0x43b40000    # 360.0f

    mul-float/2addr v9, v11

    aput v9, v8, v5

    aget v9, v4, v10

    aput v9, v8, v10

    const/4 v9, 0x2

    aget v4, v4, v9

    aput v4, v8, v9

    .line 123
    invoke-virtual {v3}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v7, v8, v3}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>([FI)V

    .line 119
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method
