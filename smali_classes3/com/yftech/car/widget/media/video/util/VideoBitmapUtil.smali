.class public Lcom/yftech/car/widget/media/video/util/VideoBitmapUtil;
.super Ljava/lang/Object;
.source "VideoBitmapUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoBitmapUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeIO(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 178
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 180
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static compressBitmap(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x9

    const/16 v1, 0x10

    if-lt p0, v1, :cond_1

    if-ge p1, v0, :cond_2

    :cond_1
    move p1, v0

    move p0, v1

    .line 150
    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 151
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 153
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 154
    invoke-static {v0}, Lcom/yftech/car/widget/media/video/util/VideoBitmapUtil;->closeIO(Ljava/io/Closeable;)V

    .line 156
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 157
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 159
    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 160
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 161
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v5, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v5, v7

    int-to-double v9, p0

    div-double/2addr v5, v9

    cmpl-double p0, v5, v7

    if-gtz p0, :cond_3

    int-to-double v9, v4

    mul-double/2addr v9, v7

    int-to-double v11, p1

    div-double/2addr v9, v11

    cmpl-double p0, v9, v7

    if-lez p0, :cond_4

    :cond_3
    int-to-double v1, v4

    mul-double/2addr v1, v7

    int-to-double p0, p1

    div-double/2addr v1, p0

    .line 165
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int v1, p0

    .line 167
    :cond_4
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 168
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 169
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 170
    array-length p0, p2

    invoke-static {p2, v3, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadVideo(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 25
    invoke-static {p0, v0, v1}, Lcom/yftech/car/widget/media/video/util/VideoBitmapUtil;->loadVideo(Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadVideo(Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x2

    .line 35
    invoke-static {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/video/util/VideoBitmapUtil;->loadVideo(Ljava/lang/String;JI)Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    move-result-object p0

    iget-object p0, p0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static loadVideo(Ljava/lang/String;JII)Landroid/graphics/Bitmap;
    .locals 0

    .line 98
    invoke-static {p0, p1, p2}, Lcom/yftech/car/widget/media/video/util/VideoBitmapUtil;->loadVideo(Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p3, p4, p0}, Lcom/yftech/car/widget/media/video/util/VideoBitmapUtil;->compressBitmap(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadVideo(Ljava/lang/String;JIII)Landroid/graphics/Bitmap;
    .locals 0

    .line 128
    invoke-static {p0, p1, p2, p5}, Lcom/yftech/car/widget/media/video/util/VideoBitmapUtil;->loadVideo(Ljava/lang/String;JI)Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    move-result-object p0

    iget-object p0, p0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p3, p4, p0}, Lcom/yftech/car/widget/media/video/util/VideoBitmapUtil;->compressBitmap(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadVideo(Ljava/lang/String;JI)Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;
    .locals 4

    .line 69
    new-instance v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;-><init>()V

    .line 70
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 72
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    .line 74
    invoke-virtual {v1, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    const/16 p1, 0x9

    .line 75
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mDuration:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "VideoBitmapUtil"

    .line 81
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadVideo: exception path=="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v0

    .line 84
    :goto_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 85
    throw p0
.end method

.method public static loadVideoReturn(Ljava/lang/String;J)Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;
    .locals 1

    const/4 v0, 0x2

    .line 39
    invoke-static {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/video/util/VideoBitmapUtil;->loadVideo(Ljava/lang/String;JI)Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    move-result-object p0

    return-object p0
.end method
