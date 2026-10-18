.class public Lcom/yftech/car/widget/media/music/util/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    const/16 v0, 0x105

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p0, v0

    move p1, p0

    .line 179
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 182
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 184
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    :goto_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 189
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 191
    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 192
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 193
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v5, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v5, v7

    int-to-double v9, p0

    div-double/2addr v5, v9

    cmpl-double p0, v5, v7

    if-gtz p0, :cond_2

    int-to-double v9, v4

    mul-double/2addr v9, v7

    int-to-double v11, p1

    div-double/2addr v9, v11

    cmpl-double p0, v9, v7

    if-lez p0, :cond_3

    :cond_2
    int-to-double v1, v4

    mul-double/2addr v1, v7

    int-to-double p0, p1

    div-double/2addr v1, p0

    .line 197
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int v1, p0

    .line 199
    :cond_3
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 200
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 201
    array-length p0, p2

    invoke-static {p2, v3, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getEmbeddedPictureAlbum(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3

    const/16 v0, 0x105

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1e

    add-int/lit8 p1, p2, 0x1e

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "MusicUtils"

    const-string p2, "getEmbeddedPictureAlbum: width == 0 || height == 0"

    .line 102
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :goto_1
    const-string p2, "MusicUtils"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmbeddedPictureAlbum: width=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",path=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {p0}, Lcom/yftech/car/widget/media/music/util/MusicUtils;->getEmbeddedPictureAlbum(Ljava/lang/String;)Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    move-result-object p0

    .line 112
    iget-object p2, p0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 116
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p0}, Lcom/yftech/car/widget/media/music/util/MusicUtils;->compress(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getEmbeddedPictureAlbum(Ljava/lang/String;)Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;
    .locals 6

    .line 121
    new-instance v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;-><init>()V

    .line 123
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v2, 0x0

    .line 126
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0x9

    .line 128
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mDuration:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v5, v2

    move-object v2, p0

    move-object p0, v5

    .line 133
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    if-nez p0, :cond_1

    const-string p0, "MusicUtils"

    const-string v2, "get cur EmbeddedPicture  is null"

    .line 136
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 138
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 139
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 140
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 148
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v4, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 150
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 151
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 152
    array-length v3, p0

    invoke-static {p0, v4, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    .line 154
    iget-object p0, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    if-nez p0, :cond_2

    .line 155
    iget-object p0, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v2, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 156
    iget-object v2, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    if-eq p0, v2, :cond_2

    .line 157
    iget-object v2, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 158
    iput-object p0, v0, Lcom/yftech/car/widget/media/entity/MediaMetadataReturn;->mBitmap:Landroid/graphics/Bitmap;

    .line 163
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 165
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object v0
.end method
