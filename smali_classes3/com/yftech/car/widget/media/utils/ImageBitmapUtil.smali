.class public Lcom/yftech/car/widget/media/utils/ImageBitmapUtil;
.super Ljava/lang/Object;
.source "ImageBitmapUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageBitmapUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5

    .line 57
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 59
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 60
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 65
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 66
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v4, 0x0

    if-gt v2, p1, :cond_1

    if-le v3, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v4

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v2, v2

    int-to-float p1, p1

    div-float v4, v2, p1

    int-to-float p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 72
    :goto_1
    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    .line 73
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 81
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static createRepeaterHeight(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 179
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x0

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v4, v2

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static createRepeaterWidth(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 166
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/2addr v3, v2

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static getImageBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 42
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 43
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 44
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, p2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_1

    :cond_0
    const-string v0, "ImageBitmapUtil"

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageBitmap: compress width=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",bitmap.getWidth()=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",bitmap.getHeight()=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p1, p2, p0}, Lcom/yftech/car/media/data/util/MusicUtils;->compress(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 100
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le p1, v0, :cond_1

    if-le p2, v1, :cond_1

    .line 106
    invoke-static {p1, p0}, Lcom/yftech/car/widget/media/utils/ImageBitmapUtil;->createRepeaterWidth(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 107
    invoke-static {p2, p0}, Lcom/yftech/car/widget/media/utils/ImageBitmapUtil;->createRepeaterHeight(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    :cond_1
    if-le p1, v0, :cond_2

    .line 110
    invoke-static {p1, p0}, Lcom/yftech/car/widget/media/utils/ImageBitmapUtil;->createRepeaterWidth(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-le p2, v1, :cond_3

    .line 112
    invoke-static {p2, p0}, Lcom/yftech/car/widget/media/utils/ImageBitmapUtil;->createRepeaterHeight(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    :cond_3
    int-to-float v2, p1

    add-int/2addr p1, p2

    int-to-float p1, p1

    div-float v3, v2, p1

    int-to-float p2, p2

    div-float p1, p2, p1

    int-to-float v4, v0

    add-int v5, v1, v0

    int-to-float v5, v5

    div-float v6, v4, v5

    int-to-float v7, v1

    div-float v5, v7, v5

    cmpl-float p1, v5, p1

    const/4 v5, 0x0

    if-lez p1, :cond_4

    div-float p1, p2, v2

    mul-float/2addr p1, v4

    float-to-int p1, p1

    sub-int/2addr v1, p1

    .line 130
    div-int/lit8 v1, v1, 0x2

    move v10, p1

    move v9, v0

    move v8, v1

    move v7, v5

    goto :goto_0

    :cond_4
    cmpl-float p1, v6, v3

    if-lez p1, :cond_5

    div-float p1, v2, p2

    mul-float/2addr p1, v7

    float-to-int p1, p1

    sub-int/2addr v0, p1

    .line 134
    div-int/lit8 v0, v0, 0x2

    move v9, p1

    move v7, v0

    move v10, v1

    move v8, v5

    goto :goto_0

    :cond_5
    move v9, v0

    move v10, v1

    move v7, v5

    move v8, v7

    :goto_0
    int-to-float p1, v9

    div-float/2addr v2, p1

    int-to-float p1, v10

    div-float/2addr p2, p1

    .line 145
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 147
    invoke-virtual {v11, v2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v12, 0x0

    move-object v6, p0

    .line 151
    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_1
    return-object p0
.end method
