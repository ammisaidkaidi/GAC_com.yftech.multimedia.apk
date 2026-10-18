.class public Landroid/view/RecordingCanvas;
.super Landroid/graphics/Canvas;
.source "RecordingCanvas.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/graphics/Canvas;-><init>(J)V

    return-void
.end method

.method private static native nDrawArc(JFFFFFFZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmap(JLandroid/graphics/Bitmap;FFJIII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmap(J[IIIFFIIZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmapMatrix(JLandroid/graphics/Bitmap;JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmapMesh(JLandroid/graphics/Bitmap;II[FI[IIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawCircle(JFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawColor(JII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawLine(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawLines(J[FIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawNinePatch(JJJFFFFJII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawOval(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawPaint(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawPath(JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawPoint(JFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawPoints(J[FIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawRect(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawRegion(JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawRoundRect(JFFFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawText(JLjava/lang/String;IIFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawText(J[CIIFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawTextOnPath(JLjava/lang/String;JFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawTextOnPath(J[CIIJFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawTextRun(J[CIIIIFFZJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawVertices(JII[FI[FI[II[SIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public final drawARGB(IIII)V
    .locals 0

    .line 73
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/RecordingCanvas;->drawColor(I)V

    return-void
.end method

.method public final drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 11

    move-object v0, p0

    .line 60
    iget-wide v0, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    .line 61
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 60
    invoke-static/range {v0 .. v10}, Landroid/view/RecordingCanvas;->nDrawArc(JFFFFFFZJ)V

    return-void
.end method

.method public final drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 9

    .line 67
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Landroid/view/RecordingCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 10

    .line 79
    invoke-virtual {p0, p1}, Landroid/view/RecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 80
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    if-eqz p4, :cond_0

    .line 81
    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    :goto_0
    move-wide v5, v2

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    :goto_1
    iget v7, p0, Landroid/view/RecordingCanvas;->mDensity:I

    iget v8, p0, Landroid/view/RecordingCanvas;->mScreenDensity:I

    iget v9, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 80
    invoke-static/range {v0 .. v9}, Landroid/view/RecordingCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFJIII)V

    return-void
.end method

.method public final drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 7

    .line 88
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v3

    if-eqz p3, :cond_0

    .line 89
    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide p2

    :goto_0
    move-wide v5, p2

    goto :goto_1

    :cond_0
    const-wide/16 p2, 0x0

    goto :goto_0

    :goto_1
    move-object v2, p1

    .line 88
    invoke-static/range {v0 .. v6}, Landroid/view/RecordingCanvas;->nDrawBitmapMatrix(JLandroid/graphics/Bitmap;JJ)V

    return-void
.end method

.method public final drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v2, :cond_2

    .line 98
    invoke-virtual/range {p0 .. p1}, Landroid/view/RecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    if-nez p4, :cond_0

    const-wide/16 v3, 0x0

    :goto_0
    move-wide/from16 v16, v3

    goto :goto_1

    .line 99
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    goto :goto_0

    :goto_1
    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v5, v1

    goto :goto_2

    .line 107
    :cond_1
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 108
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 109
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 110
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v4

    move v4, v1

    move v1, v3

    move/from16 v3, v20

    .line 113
    :goto_2
    iget-wide v6, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    int-to-float v8, v1

    int-to-float v9, v5

    int-to-float v10, v3

    int-to-float v11, v4

    iget v1, v2, Landroid/graphics/Rect;->left:I

    int-to-float v12, v1

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v13, v1

    iget v1, v2, Landroid/graphics/Rect;->right:I

    int-to-float v14, v1

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v1

    iget v0, v0, Landroid/view/RecordingCanvas;->mScreenDensity:I

    move-object/from16 v1, p1

    iget v2, v1, Landroid/graphics/Bitmap;->mDensity:I

    move-wide v5, v6

    move-object/from16 v7, p1

    move/from16 v18, v0

    move/from16 v19, v2

    invoke-static/range {v5 .. v19}, Landroid/view/RecordingCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    return-void

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v2, :cond_2

    .line 124
    invoke-virtual/range {p0 .. p1}, Landroid/view/RecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    if-nez p4, :cond_0

    const-wide/16 v3, 0x0

    :goto_0
    move-wide/from16 v16, v3

    goto :goto_1

    .line 125
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    goto :goto_0

    :goto_1
    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move v8, v1

    move v9, v8

    move v10, v3

    move v11, v4

    goto :goto_2

    .line 133
    :cond_1
    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 134
    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    .line 135
    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 136
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    move v11, v1

    move v8, v3

    move v10, v4

    move v9, v5

    .line 139
    :goto_2
    iget-wide v5, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    iget v12, v2, Landroid/graphics/RectF;->left:F

    iget v13, v2, Landroid/graphics/RectF;->top:F

    iget v14, v2, Landroid/graphics/RectF;->right:F

    iget v15, v2, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/view/RecordingCanvas;->mScreenDensity:I

    move-object/from16 v1, p1

    iget v2, v1, Landroid/graphics/Bitmap;->mDensity:I

    move-object/from16 v7, p1

    move/from16 v18, v0

    move/from16 v19, v2

    invoke-static/range {v5 .. v19}, Landroid/view/RecordingCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    return-void

    .line 122
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move/from16 v7, p6

    if-ltz v7, :cond_6

    if-ltz p7, :cond_5

    .line 156
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v7, :cond_4

    add-int/lit8 v0, p7, -0x1

    mul-int/2addr v0, p3

    add-int/2addr v0, p2

    move-object v2, p1

    .line 160
    array-length v1, v2

    if-ltz p2, :cond_3

    add-int v5, p2, v7

    if-gt v5, v1, :cond_3

    if-ltz v0, :cond_3

    add-int/2addr v0, v7

    if-gt v0, v1, :cond_3

    if-eqz v7, :cond_2

    if-nez p7, :cond_0

    goto :goto_2

    :cond_0
    move-object v0, p0

    .line 170
    iget-wide v0, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    if-eqz p9, :cond_1

    .line 171
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    :goto_0
    move-wide v10, v5

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x0

    goto :goto_0

    :goto_1
    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 170
    invoke-static/range {v0 .. v11}, Landroid/view/RecordingCanvas;->nDrawBitmap(J[IIIFFIIZJ)V

    return-void

    :cond_2
    :goto_2
    return-void

    .line 163
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 157
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "abs(stride) must be >= width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move v0, p4

    int-to-float v4, v0

    move v0, p5

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 180
    invoke-virtual/range {v0 .. v9}, Landroid/view/RecordingCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 11

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    or-int v0, p2, p3

    or-int/2addr v0, v6

    or-int/2addr v0, v8

    if-ltz v0, :cond_4

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p3, 0x1

    mul-int/2addr v0, v1

    move-object v5, p4

    .line 196
    array-length v1, v5

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v6, v2}, Landroid/view/RecordingCanvas;->checkRange(III)V

    if-eqz v7, :cond_1

    .line 199
    array-length v1, v7

    invoke-static {v1, v8, v0}, Landroid/view/RecordingCanvas;->checkRange(III)V

    :cond_1
    move-object v0, p0

    .line 201
    iget-wide v0, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    if-eqz p8, :cond_2

    .line 203
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    goto :goto_0

    :cond_2
    const-wide/16 v9, 0x0

    :goto_0
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 201
    invoke-static/range {v0 .. v10}, Landroid/view/RecordingCanvas;->nDrawBitmapMesh(JLandroid/graphics/Bitmap;II[FI[IIJ)V

    return-void

    :cond_3
    :goto_1
    return-void

    .line 189
    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 7

    .line 208
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/view/RecordingCanvas;->nDrawCircle(JFFFJ)V

    return-void
.end method

.method public final drawColor(I)V
    .locals 2

    .line 213
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    iget p0, p0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, p0}, Landroid/view/RecordingCanvas;->nDrawColor(JII)V

    return-void
.end method

.method public final drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 218
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    iget p0, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, p0}, Landroid/view/RecordingCanvas;->nDrawColor(JII)V

    return-void
.end method

.method public final drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 8

    .line 224
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/view/RecordingCanvas;->nDrawLine(JFFFFJ)V

    return-void
.end method

.method public final drawLines([FIILandroid/graphics/Paint;)V
    .locals 7

    .line 230
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/view/RecordingCanvas;->nDrawLines(J[FIIJ)V

    return-void
.end method

.method public final drawLines([FLandroid/graphics/Paint;)V
    .locals 2

    .line 235
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/view/RecordingCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 8

    .line 241
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/view/RecordingCanvas;->nDrawOval(JFFFFJ)V

    return-void
.end method

.method public final drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 249
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/RecordingCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 247
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public final drawPaint(Landroid/graphics/Paint;)V
    .locals 2

    .line 254
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Landroid/view/RecordingCanvas;->nDrawPaint(JJ)V

    return-void
.end method

.method public final drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 261
    invoke-virtual {v0, v2}, Landroid/view/RecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    if-nez p3, :cond_0

    const-wide/16 v3, 0x0

    :goto_0
    move-wide v15, v3

    goto :goto_1

    .line 262
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    goto :goto_0

    .line 263
    :goto_1
    iget-wide v5, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    move-object/from16 v2, p1

    iget-wide v9, v2, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v11, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v12, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v13, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v1

    iget v0, v0, Landroid/view/RecordingCanvas;->mDensity:I

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v18

    move/from16 v17, v0

    .line 263
    invoke-static/range {v5 .. v18}, Landroid/view/RecordingCanvas;->nDrawNinePatch(JJJFFFFJII)V

    return-void
.end method

.method public final drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 272
    invoke-virtual {v0, v2}, Landroid/view/RecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    if-nez p3, :cond_0

    const-wide/16 v3, 0x0

    :goto_0
    move-wide v15, v3

    goto :goto_1

    .line 273
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    goto :goto_0

    .line 274
    :goto_1
    iget-wide v5, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    move-object/from16 v2, p1

    iget-wide v9, v2, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v12, v1, Landroid/graphics/RectF;->top:F

    iget v13, v1, Landroid/graphics/RectF;->right:F

    iget v14, v1, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/view/RecordingCanvas;->mDensity:I

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v18

    move/from16 v17, v0

    .line 274
    invoke-static/range {v5 .. v18}, Landroid/view/RecordingCanvas;->nDrawNinePatch(JJJFFFFJII)V

    return-void
.end method

.method public final drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 13

    .line 281
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    .line 282
    iget-wide v1, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    iget-object p0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    iget-wide v3, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Landroid/view/RecordingCanvas;->nDrawRegion(JJJ)V

    goto :goto_0

    .line 284
    :cond_0
    iget-wide v7, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v9

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    invoke-static/range {v7 .. v12}, Landroid/view/RecordingCanvas;->nDrawPath(JJJ)V

    :goto_0
    return-void
.end method

.method public final drawPicture(Landroid/graphics/Picture;)V
    .locals 1

    .line 290
    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    .line 291
    invoke-virtual {p0}, Landroid/view/RecordingCanvas;->save()I

    move-result v0

    .line 292
    invoke-virtual {p1, p0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 293
    invoke-virtual {p0, v0}, Landroid/view/RecordingCanvas;->restoreToCount(I)V

    return-void
.end method

.method public final drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 2

    .line 298
    invoke-virtual {p0}, Landroid/view/RecordingCanvas;->save()I

    .line 299
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/view/RecordingCanvas;->translate(FF)V

    .line 300
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 301
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 302
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    .line 301
    invoke-virtual {p0, v0, p2}, Landroid/view/RecordingCanvas;->scale(FF)V

    .line 304
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/RecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 305
    invoke-virtual {p0}, Landroid/view/RecordingCanvas;->restore()V

    return-void
.end method

.method public final drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 2

    .line 310
    invoke-virtual {p0}, Landroid/view/RecordingCanvas;->save()I

    .line 311
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/view/RecordingCanvas;->translate(FF)V

    .line 312
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 313
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    invoke-virtual {p0, v0, p2}, Landroid/view/RecordingCanvas;->scale(FF)V

    .line 315
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/RecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 316
    invoke-virtual {p0}, Landroid/view/RecordingCanvas;->restore()V

    return-void
.end method

.method public final drawPoint(FFLandroid/graphics/Paint;)V
    .locals 6

    .line 321
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/view/RecordingCanvas;->nDrawPoint(JFFJ)V

    return-void
.end method

.method public final drawPoints([FIILandroid/graphics/Paint;)V
    .locals 7

    .line 327
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/view/RecordingCanvas;->nDrawPoints(J[FIIJ)V

    return-void
.end method

.method public final drawPoints([FLandroid/graphics/Paint;)V
    .locals 2

    .line 332
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/view/RecordingCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 354
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/RecordingCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p2, :cond_1

    add-int v0, p2, p3

    .line 341
    array-length v1, p1

    if-gt v0, v1, :cond_1

    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v3, p2, v0

    const/4 v4, 0x1

    mul-int/lit8 v1, v0, 0x2

    .line 345
    aget v5, p4, v1

    add-int/lit8 v1, v1, 0x1

    aget v6, p4, v1

    move-object v1, p0

    move-object v2, p1

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/view/RecordingCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 342
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final drawRGB(III)V
    .locals 0

    .line 376
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/RecordingCanvas;->drawColor(I)V

    return-void
.end method

.method public final drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 8

    .line 360
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/view/RecordingCanvas;->nDrawRect(JFFFFJ)V

    return-void
.end method

.method public final drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 7

    .line 365
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p1

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/view/RecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 8

    .line 370
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 371
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    .line 370
    invoke-static/range {v0 .. v7}, Landroid/view/RecordingCanvas;->nDrawRect(JFFFFJ)V

    return-void
.end method

.method public final drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 10

    move-object v0, p0

    .line 382
    iget-wide v0, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    .line 383
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    .line 382
    invoke-static/range {v0 .. v9}, Landroid/view/RecordingCanvas;->nDrawRoundRect(JFFFFFFJ)V

    return-void
.end method

.method public final drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 8

    .line 388
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/view/RecordingCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 13

    move-object v1, p0

    move-object v0, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p6

    or-int v2, v3, v4

    sub-int v7, v4, v3

    or-int/2addr v2, v7

    .line 405
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, v4

    or-int/2addr v2, v5

    if-ltz v2, :cond_3

    .line 408
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_2

    instance-of v2, v0, Landroid/text/SpannedString;

    if-nez v2, :cond_2

    instance-of v2, v0, Landroid/text/SpannableString;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    instance-of v2, v0, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_1

    .line 413
    check-cast v0, Landroid/text/GraphicsOperations;

    move-object v1, p0

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 416
    :cond_1
    invoke-static {v7}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    const/4 v5, 0x0

    .line 417
    invoke-static {p1, p2, v4, v2, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 418
    iget-wide v3, v1, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    const/4 v0, 0x0

    iget v10, v6, Landroid/graphics/Paint;->mBidiFlags:I

    .line 419
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    move-object v5, v2

    move v6, v0

    move/from16 v8, p4

    move/from16 v9, p5

    .line 418
    invoke-static/range {v3 .. v12}, Landroid/view/RecordingCanvas;->nDrawText(J[CIIFFIJ)V

    .line 420
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1

    .line 410
    :cond_2
    :goto_0
    iget-wide v1, v1, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget v7, v6, Landroid/graphics/Paint;->mBidiFlags:I

    .line 411
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    move-wide v0, v1

    move-object v2, v5

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 410
    invoke-static/range {v0 .. v9}, Landroid/view/RecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    :goto_1
    return-void

    .line 406
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 10

    .line 426
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v7, p4, Landroid/graphics/Paint;->mBidiFlags:I

    .line 427
    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    const/4 v3, 0x0

    move-object v2, p1

    move v5, p2

    move v6, p3

    .line 426
    invoke-static/range {v0 .. v9}, Landroid/view/RecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    return-void
.end method

.method public final drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 10

    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    .line 433
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    move-object v0, p0

    .line 436
    iget-wide v0, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v2, p6

    iget v7, v2, Landroid/graphics/Paint;->mBidiFlags:I

    .line 437
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 436
    invoke-static/range {v0 .. v9}, Landroid/view/RecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    return-void

    .line 434
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 10

    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    move-object v2, p1

    .line 394
    array-length v1, v2

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    move-object v0, p0

    .line 398
    iget-wide v0, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v5, p6

    iget v7, v5, Landroid/graphics/Paint;->mBidiFlags:I

    .line 399
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 398
    invoke-static/range {v0 .. v9}, Landroid/view/RecordingCanvas;->nDrawText(J[CIIFFIJ)V

    return-void

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 10

    .line 454
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 455
    iget-wide v0, p0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v3

    iget v7, p5, Landroid/graphics/Paint;->mBidiFlags:I

    .line 456
    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    move-object v2, p1

    move v5, p3

    move v6, p4

    .line 455
    invoke-static/range {v0 .. v9}, Landroid/view/RecordingCanvas;->nDrawTextOnPath(JLjava/lang/String;JFFIJ)V

    :cond_0
    return-void
.end method

.method public final drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 12

    if-ltz p2, :cond_0

    add-int v0, p2, p3

    move-object v2, p1

    .line 443
    array-length v1, v2

    if-gt v0, v1, :cond_0

    move-object v0, p0

    .line 446
    iget-wide v0, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    .line 447
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v5

    move-object/from16 v7, p7

    iget v9, v7, Landroid/graphics/Paint;->mBidiFlags:I

    .line 448
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v7, p5

    move/from16 v8, p6

    .line 446
    invoke-static/range {v0 .. v11}, Landroid/view/RecordingCanvas;->nDrawTextOnPath(J[CIIJFFIJ)V

    return-void

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    if-eqz v0, :cond_6

    if-eqz p9, :cond_5

    or-int v2, v3, v4

    or-int/2addr v2, v5

    or-int/2addr v2, v6

    sub-int v7, v3, v5

    or-int/2addr v2, v7

    sub-int v8, v4, v3

    or-int/2addr v2, v8

    sub-int v10, v6, v4

    or-int/2addr v2, v10

    .line 491
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    sub-int/2addr v10, v6

    or-int/2addr v2, v10

    if-ltz v2, :cond_4

    .line 495
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_3

    instance-of v2, v0, Landroid/text/SpannedString;

    if-nez v2, :cond_3

    instance-of v2, v0, Landroid/text/SpannableString;

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 499
    :cond_0
    instance-of v2, v0, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_1

    .line 500
    check-cast v0, Landroid/text/GraphicsOperations;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_1
    sub-int v2, v6, v5

    .line 505
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v15

    const/4 v10, 0x0

    .line 506
    invoke-static {v0, v5, v6, v15, v10}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    const-wide/16 v5, 0x0

    .line 508
    instance-of v10, v0, Landroid/text/PrecomputedText;

    if-eqz v10, :cond_2

    .line 509
    check-cast v0, Landroid/text/PrecomputedText;

    .line 510
    invoke-virtual {v0, v3}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v3

    .line 511
    invoke-virtual {v0, v3}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v10

    if-gt v4, v10, :cond_2

    .line 513
    invoke-virtual {v0, v3}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/MeasuredParagraph;->getNativePtr()J

    move-result-wide v3

    move-wide/from16 v16, v3

    goto :goto_0

    :cond_2
    move-wide/from16 v16, v5

    .line 516
    :goto_0
    iget-wide v3, v1, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    const/4 v0, 0x0

    .line 517
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v13

    move-object v5, v15

    move v6, v7

    move v7, v8

    move v8, v0

    move v9, v2

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object v0, v15

    move-wide/from16 v15, v16

    .line 516
    invoke-static/range {v3 .. v16}, Landroid/view/RecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 518
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_2

    .line 497
    :cond_3
    :goto_1
    iget-wide v1, v1, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 498
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-wide v0, v1

    move-object v2, v7

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 497
    invoke-static/range {v0 .. v11}, Landroid/view/RecordingCanvas;->nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V

    :goto_2
    return-void

    .line 492
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 488
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "paint is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .locals 14

    move-object v2, p1

    if-eqz v2, :cond_2

    if-eqz p9, :cond_1

    or-int v1, p2, p3

    or-int v1, v1, p4

    or-int v1, v1, p5

    sub-int v7, p2, p4

    or-int/2addr v1, v7

    add-int v7, p4, p5

    add-int v8, p2, p3

    sub-int v8, v7, v8

    or-int/2addr v1, v8

    .line 470
    array-length v8, v2

    sub-int/2addr v8, v7

    or-int/2addr v1, v8

    if-ltz v1, :cond_0

    move-object v1, p0

    .line 476
    iget-wide v7, v1, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    .line 477
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    move-wide v0, v7

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 476
    invoke-static/range {v0 .. v13}, Landroid/view/RecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    return-void

    .line 473
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 468
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "paint is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 15

    move/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v4, p3

    .line 527
    array-length v0, v4

    move/from16 v5, p4

    invoke-static {v0, v5, v3}, Landroid/view/RecordingCanvas;->checkRange(III)V

    .line 528
    invoke-virtual {p0}, Landroid/view/RecordingCanvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz v6, :cond_1

    .line 532
    array-length v0, v6

    move/from16 v7, p6

    invoke-static {v0, v7, v3}, Landroid/view/RecordingCanvas;->checkRange(III)V

    goto :goto_0

    :cond_1
    move/from16 v7, p6

    :goto_0
    if-eqz v8, :cond_2

    .line 535
    array-length v0, v8

    div-int/lit8 v1, v3, 0x2

    move/from16 v9, p8

    invoke-static {v0, v9, v1}, Landroid/view/RecordingCanvas;->checkRange(III)V

    goto :goto_1

    :cond_2
    move/from16 v9, p8

    :goto_1
    if-eqz v10, :cond_3

    .line 538
    array-length v0, v10

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-static {v0, v11, v12}, Landroid/view/RecordingCanvas;->checkRange(III)V

    goto :goto_2

    :cond_3
    move/from16 v11, p10

    move/from16 v12, p11

    :goto_2
    move-object v0, p0

    .line 540
    iget-wide v0, v0, Landroid/view/RecordingCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v2, p1

    iget v2, v2, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    .line 542
    invoke-virtual/range {p12 .. p12}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v13

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    .line 540
    invoke-static/range {v0 .. v14}, Landroid/view/RecordingCanvas;->nDrawVertices(JII[FI[FI[II[SIIJ)V

    return-void
.end method
