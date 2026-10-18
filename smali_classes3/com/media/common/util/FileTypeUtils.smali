.class public Lcom/media/common/util/FileTypeUtils;
.super Ljava/lang/Object;
.source "FileTypeUtils.java"


# static fields
.field public static final imageGIF:Ljava/lang/String; = "image/gif"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compare([B[B)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 94
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 95
    aget-byte v2, p1, v1

    .line 96
    aget-byte v3, p0, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 23
    :try_start_0
    invoke-static {p0}, Lcom/media/common/util/FileTypeUtils;->readType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "image/%s"

    const/4 v1, 0x1

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static isBMP([B)Z
    .locals 1

    const-string v0, "BM"

    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 121
    invoke-static {p0, v0}, Lcom/media/common/util/FileTypeUtils;->compare([B[B)Z

    move-result p0

    return p0
.end method

.method private static isGIF([B)Z
    .locals 2

    const-string v0, "GIF89a"

    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 137
    invoke-static {p0, v0}, Lcom/media/common/util/FileTypeUtils;->compare([B[B)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "GIF87a"

    .line 140
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 141
    invoke-static {p0, v0}, Lcom/media/common/util/FileTypeUtils;->compare([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isICON([B)Z
    .locals 1

    const/16 v0, 0x8

    .line 125
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 126
    invoke-static {p0, v0}, Lcom/media/common/util/FileTypeUtils;->compare([B[B)Z

    move-result p0

    return p0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x20t
        0x20t
    .end array-data
.end method

.method private static isJPEGFooter([B)Z
    .locals 1

    const/4 v0, 0x2

    .line 163
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 164
    invoke-static {p0, v0}, Lcom/media/common/util/FileTypeUtils;->compare([B[B)Z

    move-result p0

    return p0

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x27t
    .end array-data
.end method

.method private static isJPEGHeader([B)Z
    .locals 1

    const/4 v0, 0x2

    .line 156
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 158
    invoke-static {p0, v0}, Lcom/media/common/util/FileTypeUtils;->compare([B[B)Z

    move-result p0

    return p0

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
    .end array-data
.end method

.method private static isPNG([B)Z
    .locals 1

    const/16 v0, 0x8

    .line 150
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 152
    invoke-static {p0, v0}, Lcom/media/common/util/FileTypeUtils;->compare([B[B)Z

    move-result p0

    return p0

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method private static isWEBP([B)Z
    .locals 1

    const-string v0, "RIFF"

    .line 130
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 131
    invoke-static {p0, v0}, Lcom/media/common/util/FileTypeUtils;->compare([B[B)Z

    move-result p0

    return p0
.end method

.method private static readInputStreamAt(Ljava/io/FileInputStream;JI)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    new-array v0, p3, [B

    .line 114
    invoke-virtual {p0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    const/4 p1, 0x0

    .line 115
    invoke-virtual {p0, v0, p1, p3}, Ljava/io/FileInputStream;->read([BII)I

    return-object v0
.end method

.method private static readType(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 42
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    cmp-long p0, v2, v4

    if-ltz p0, :cond_6

    .line 47
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    const/16 v0, 0x8

    .line 48
    :try_start_1
    invoke-static {p0, v2, v3, v0}, Lcom/media/common/util/FileTypeUtils;->readInputStreamAt(Ljava/io/FileInputStream;JI)[B

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/media/common/util/FileTypeUtils;->isJPEGHeader([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v6, 0x2

    sub-long/2addr v1, v6

    sub-long/2addr v1, v4

    const/4 v3, 0x2

    .line 51
    invoke-static {p0, v1, v2, v3}, Lcom/media/common/util/FileTypeUtils;->readInputStreamAt(Ljava/io/FileInputStream;JI)[B

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/media/common/util/FileTypeUtils;->isJPEGFooter([B)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "jpeg"
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    .line 56
    :cond_0
    :try_start_3
    invoke-static {v0}, Lcom/media/common/util/FileTypeUtils;->isPNG([B)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "png"
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object v0

    .line 59
    :cond_1
    :try_start_5
    invoke-static {v0}, Lcom/media/common/util/FileTypeUtils;->isGIF([B)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "gif"
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 78
    :try_start_6
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    return-object v0

    .line 63
    :cond_2
    :try_start_7
    invoke-static {v0}, Lcom/media/common/util/FileTypeUtils;->isWEBP([B)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "webp"
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 78
    :try_start_8
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    return-object v0

    .line 66
    :cond_3
    :try_start_9
    invoke-static {v0}, Lcom/media/common/util/FileTypeUtils;->isBMP([B)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "bmp"
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 78
    :try_start_a
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    return-object v0

    .line 69
    :cond_4
    :try_start_b
    invoke-static {v0}, Lcom/media/common/util/FileTypeUtils;->isICON([B)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ico"
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 78
    :try_start_c
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    :catch_5
    return-object v0

    .line 72
    :cond_5
    :try_start_d
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "the image\'s format is unkown!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catch_6
    move-exception v0

    goto :goto_0

    .line 44
    :cond_6
    :try_start_e
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] is not image !"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catchall_0
    move-exception p0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_1

    :catch_7
    move-exception p0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    .line 75
    :goto_0
    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz p0, :cond_7

    .line 78
    :try_start_10
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    .line 81
    :catch_8
    :cond_7
    throw v0
.end method
