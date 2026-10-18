.class public Landroid/gesture/GestureStroke;
.super Ljava/lang/Object;
.source "GestureStroke.java"


# static fields
.field static final TOUCH_TOLERANCE:F = 3.0f


# instance fields
.field public final boundingBox:Landroid/graphics/RectF;

.field public final length:F

.field private mCachedPath:Landroid/graphics/Path;

.field public final points:[F

.field private final timestamps:[J


# direct methods
.method private constructor <init>(Landroid/graphics/RectF;F[F[J)V
    .locals 4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    .line 89
    iput p2, p0, Landroid/gesture/GestureStroke;->length:F

    .line 90
    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 91
    invoke-virtual {p4}, [J->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    iput-object p1, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GesturePoint;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    .line 51
    new-array v2, v2, [F

    .line 52
    new-array v3, v1, [J

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    const/4 v8, 0x0

    move v6, v4

    :goto_0
    if-ge v4, v1, :cond_1

    move-object/from16 v9, p1

    .line 59
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/gesture/GesturePoint;

    mul-int/lit8 v11, v4, 0x2

    .line 60
    iget v12, v10, Landroid/gesture/GesturePoint;->x:F

    aput v12, v2, v11

    add-int/lit8 v11, v11, 0x1

    .line 61
    iget v12, v10, Landroid/gesture/GesturePoint;->y:F

    aput v12, v2, v11

    .line 62
    iget-wide v11, v10, Landroid/gesture/GesturePoint;->timestamp:J

    aput-wide v11, v3, v6

    if-nez v7, :cond_0

    .line 65
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 66
    iget v8, v10, Landroid/gesture/GesturePoint;->y:F

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 67
    iget v8, v10, Landroid/gesture/GesturePoint;->x:F

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 68
    iget v8, v10, Landroid/gesture/GesturePoint;->x:F

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 69
    iget v8, v10, Landroid/gesture/GesturePoint;->y:F

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v6

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    float-to-double v11, v8

    .line 72
    iget v8, v10, Landroid/gesture/GesturePoint;->x:F

    add-int/lit8 v13, v4, -0x1

    mul-int/lit8 v13, v13, 0x2

    aget v14, v2, v13

    sub-float/2addr v8, v14

    float-to-double v14, v8

    iget v8, v10, Landroid/gesture/GesturePoint;->y:F

    add-int/lit8 v13, v13, 0x1

    aget v13, v2, v13

    sub-float/2addr v8, v13

    move/from16 v16, v6

    float-to-double v5, v8

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    add-double/2addr v11, v5

    double-to-float v5, v11

    .line 73
    iget v6, v10, Landroid/gesture/GesturePoint;->x:F

    iget v8, v10, Landroid/gesture/GesturePoint;->y:F

    invoke-virtual {v7, v6, v8}, Landroid/graphics/RectF;->union(FF)V

    move v8, v5

    :goto_1
    add-int/lit8 v6, v16, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
    :cond_1
    iput-object v3, v0, Landroid/gesture/GestureStroke;->timestamps:[J

    .line 79
    iput-object v2, v0, Landroid/gesture/GestureStroke;->points:[F

    .line 80
    iput-object v7, v0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    .line 81
    iput v8, v0, Landroid/gesture/GestureStroke;->length:F

    return-void
.end method

.method static deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GestureStroke;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 224
    invoke-static {p0}, Landroid/gesture/GesturePoint;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GesturePoint;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_0
    new-instance p0, Landroid/gesture/GestureStroke;

    invoke-direct {p0, v1}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method

.method private makePath()V
    .locals 11

    .line 121
    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 122
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v2

    :goto_0
    if-ge v4, v1, :cond_3

    .line 130
    aget v6, v0, v4

    add-int/lit8 v7, v4, 0x1

    .line 131
    aget v7, v0, v7

    if-nez v3, :cond_0

    .line 133
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 134
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    move-object v3, v2

    :goto_1
    move v2, v6

    move v5, v7

    goto :goto_2

    :cond_0
    sub-float v8, v6, v2

    .line 138
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float v9, v7, v5

    .line 139
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x40400000    # 3.0f

    cmpl-float v8, v8, v10

    if-gez v8, :cond_1

    cmpl-float v8, v9, v10

    if-ltz v8, :cond_2

    :cond_1
    add-float v8, v6, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float v10, v7, v5

    div-float/2addr v10, v9

    .line 141
    invoke-virtual {v3, v2, v5, v8, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 148
    :cond_3
    iput-object v3, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public clearPath()V
    .locals 1

    .line 234
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->rewind()V

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .line 96
    new-instance v0, Landroid/gesture/GestureStroke;

    iget-object v1, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    iget v2, p0, Landroid/gesture/GestureStroke;->length:F

    iget-object v3, p0, Landroid/gesture/GestureStroke;->points:[F

    iget-object p0, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/gesture/GestureStroke;-><init>(Landroid/graphics/RectF;F[F[J)V

    return-object v0
.end method

.method public computeOrientedBoundingBox()Landroid/gesture/OrientedBoundingBox;
    .locals 0

    .line 243
    iget-object p0, p0, Landroid/gesture/GestureStroke;->points:[F

    invoke-static {p0}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F)Landroid/gesture/OrientedBoundingBox;

    move-result-object p0

    return-object p0
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 105
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    .line 109
    :cond_0
    iget-object p0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .line 113
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    .line 117
    :cond_0
    iget-object p0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    return-object p0
.end method

.method serialize(Ljava/io/DataOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 202
    iget-object v1, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    .line 203
    iget-object p0, p0, Landroid/gesture/GestureStroke;->points:[F

    array-length p0, p0

    .line 206
    div-int/lit8 v2, p0, 0x2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 210
    aget v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    add-int/lit8 v3, v2, 0x1

    .line 212
    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 214
    div-int/lit8 v3, v2, 0x2

    aget-wide v3, v1, v3

    invoke-virtual {p1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toPath(FFI)Landroid/graphics/Path;
    .locals 7

    .line 161
    invoke-static {p0, p3}, Landroid/gesture/GestureUtils;->temporalSampling(Landroid/gesture/GestureStroke;I)[F

    move-result-object p3

    .line 162
    iget-object p0, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    .line 164
    iget v0, p0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-static {p3, v0, v1}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    .line 166
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p1, v0

    .line 167
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float p0, p2, p0

    cmpl-float p2, p1, p0

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    .line 169
    :goto_0
    invoke-static {p3, p0, p0}, Landroid/gesture/GestureUtils;->scale([FFF)[F

    const/4 p0, 0x0

    .line 176
    array-length p1, p3

    const/4 p2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge p2, p1, :cond_4

    .line 179
    aget v2, p3, p2

    add-int/lit8 v3, p2, 0x1

    .line 180
    aget v3, p3, v3

    if-nez p0, :cond_1

    .line 182
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 183
    invoke-virtual {p0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_2
    move v0, v2

    move v1, v3

    goto :goto_3

    :cond_1
    sub-float v4, v2, v0

    .line 187
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v5, v3, v1

    .line 188
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40400000    # 3.0f

    cmpl-float v4, v4, v6

    if-gez v4, :cond_2

    cmpl-float v4, v5, v6

    if-ltz v4, :cond_3

    :cond_2
    add-float v4, v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v6, v3, v1

    div-float/2addr v6, v5

    .line 190
    invoke-virtual {p0, v0, v1, v4, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 p2, p2, 0x2

    goto :goto_1

    :cond_4
    return-object p0
.end method
