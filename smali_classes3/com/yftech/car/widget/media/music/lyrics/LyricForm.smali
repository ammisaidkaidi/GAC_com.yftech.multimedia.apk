.class public Lcom/yftech/car/widget/media/music/lyrics/LyricForm;
.super Ljava/lang/Object;
.source "LyricForm.java"


# static fields
.field private static final KRC:Ljava/lang/String; = ".krc"

.field private static final LRC:Ljava/lang/String; = ".lrc"

.field private static final TAG:Ljava/lang/String; = "LyricForm"


# instance fields
.field private final CHARSET_GBK:Ljava/nio/charset/Charset;

.field private isReadFile:Z

.field private isValid:Z

.field private mAddKrc:Z

.field private mHandler:Landroid/os/Handler;

.field private mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

.field private final miarry:[I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Z)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 29
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->miarry:[I

    const-string v0, "GBK"

    .line 31
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->CHARSET_GBK:Ljava/nio/charset/Charset;

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->isValid:Z

    .line 75
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->mHandler:Landroid/os/Handler;

    .line 76
    iput-boolean p2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->mAddKrc:Z

    return-void

    :array_0
    .array-data 4
        0x40
        0x47
        0x61
        0x77
        0x5e
        0x32
        0x74
        0x47
        0x51
        0x36
        0x31
        0x2d
        0xce
        0xd2
        0x6e
        0x69
    .end array-data
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/music/lyrics/LyricForm;)Lcom/yftech/car/widget/media/music/lyrics/Lyric;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    return-object p0
.end method

.method private getKrcText(Ljava/io/File;)[B
    .locals 6

    .line 380
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 383
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x4

    .line 384
    :try_start_1
    new-array p1, p1, [B

    .line 385
    invoke-virtual {v2, p1}, Ljava/io/FileInputStream;->read([B)I

    .line 386
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v2, v1

    .line 388
    :goto_0
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 390
    :goto_1
    array-length p1, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_0

    .line 392
    rem-int/lit8 v3, v1, 0x10

    .line 395
    aget-byte v4, v0, v1

    iget-object v5, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->miarry:[I

    aget v3, v5, v3

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    if-eqz v2, :cond_1

    .line 406
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 408
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 411
    :cond_1
    :goto_3
    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/ZLibUtils;->decompress([B)[B

    move-result-object p0

    return-object p0
.end method

.method private isFileName(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 470
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isFindNameKrc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 328
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, ".krc"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFindNameLrc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 331
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, ".lrc"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadLyric(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric;
    .locals 8

    .line 119
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 122
    iput-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    .line 125
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "LyricForm"

    const-string v2, "loadLyric: lrc exists"

    .line 126
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".krc"

    .line 128
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 129
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->loadingKrc(Ljava/io/File;)Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    goto/16 :goto_3

    .line 131
    :cond_1
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->loadingLrc(Ljava/io/File;Ljava/nio/charset/Charset;)V

    .line 132
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    return-object p0

    .line 137
    :cond_2
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->mAddKrc:Z

    if-eqz v0, :cond_c

    const-string v0, ".lrc"

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    const-string v0, "."

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".krc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LyricForm"

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadingLyric: krcPath=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string p1, "LyricForm"

    const-string v0, "loadLyric: krc exists"

    .line 144
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0, v4}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->loadingKrc(Ljava/io/File;)Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    goto/16 :goto_3

    :cond_3
    const-string v4, "/"

    .line 148
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 149
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 153
    array-length v4, p1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, p1, v5

    .line 154
    iget-boolean v7, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->isValid:Z

    if-nez v7, :cond_4

    const-string p1, "LyricForm"

    const-string/jumbo v0, "readFileLyric: isValid is false"

    .line 155
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 158
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 159
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 160
    invoke-direct {p0, v0, v6}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->isFindNameKrc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 161
    invoke-direct {p0, v6}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->loadLyric(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    move v1, v2

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    const-string p1, "LyricForm"

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLyric: isFind=="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_c

    .line 170
    invoke-direct {p0, v3}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->loadLyric(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    goto/16 :goto_3

    :cond_7
    const-string v0, "LyricForm"

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadingLyric: path =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->isReadFile:Z

    const-string/jumbo v0, "usb/null"

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x9

    if-le v0, v3, :cond_a

    .line 180
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "/"

    .line 182
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_9

    add-int/2addr v0, v3

    .line 186
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v0, :cond_8

    .line 187
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "LyricForm"

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadingLyric: \u6b4c\u8bcd\u6587\u4ef6\u672a\u627e\u5230\uff0c\u6b63\u5728\u5168\u76d8\u626b\u63cf\u6b4c\u8bcd... scan == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v2, "/"

    .line 193
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->readFileLyric([Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string p1, "LyricForm"

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLyric: indexOf error end=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    const-string p1, "LyricForm"

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLyric: path error,endIndex=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    const-string p1, "LyricForm"

    const-string v0, "loadLyric: path error"

    .line 202
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_b
    :goto_2
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->isReadFile:Z

    if-nez p1, :cond_c

    const-string p1, "LyricForm"

    const-string v0, "loadLyric: \u672a\u627e\u5230\u6b4c\u8bcd\u6587\u4ef6"

    .line 207
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    goto :goto_4

    :cond_d
    sget-object p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->EMPTY:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    :goto_4
    return-object p0
.end method

.method private loadingKrc(Ljava/io/File;)Lcom/yftech/car/widget/media/music/lyrics/Lyric;
    .locals 11

    .line 219
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->getKrcText(Ljava/io/File;)[B

    move-result-object p1

    const-string v0, "LyricForm"

    const-string v1, "loadingKrc: krc data ---ok"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 225
    new-instance p1, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 226
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    new-instance v3, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    invoke-direct {v3}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;-><init>()V

    :goto_0
    const/4 v4, 0x0

    .line 232
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 233
    iget-boolean v6, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->isValid:Z

    if-nez v6, :cond_0

    const-string p0, "LyricForm"

    const-string v1, "loadingKrc: isValid is false"

    .line 234
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 244
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x0

    if-lez v6, :cond_1

    .line 245
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v2, v7, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    const-string v6, "]"

    .line 247
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    add-int/2addr v6, v8

    .line 248
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 249
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-direct {p0, v10, v9, v2}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->loadingLyricDate(Ljava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 254
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v8}, Lcom/yftech/car/widget/media/music/lyrics/LrcParser;->parseLine(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;Ljava/lang/String;Z)V

    .line 256
    invoke-virtual {v3, v10}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->setKrcList(Ljava/util/List;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 259
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 264
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 265
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 267
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    if-eqz v3, :cond_3

    .line 270
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->build()Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    move-result-object p0

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->EMPTY:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    :goto_2
    return-object p0
.end method

.method private loadingLrc(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 10

    const/4 v0, 0x0

    .line 278
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 279
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 280
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 283
    new-instance v4, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    invoke-direct {v4}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 285
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 287
    iget-boolean v5, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->isValid:Z

    if-nez v5, :cond_0

    const-string p1, "LyricForm"

    const-string p2, "loadingLrc: isValid is false"

    .line 288
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 294
    :cond_0
    iget-object v5, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->CHARSET_GBK:Ljava/nio/charset/Charset;

    if-eq p2, v5, :cond_3

    .line 295
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_3

    const/4 v6, 0x0

    const-string v7, "]"

    .line 298
    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_3

    if-ge v7, v5, :cond_3

    :goto_1
    if-ge v7, v5, :cond_2

    .line 301
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const v9, 0xfffd

    if-ne v8, v9, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 305
    :cond_2
    div-int/lit8 v5, v5, 0x3

    if-le v6, v5, :cond_3

    .line 306
    iget-object p2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->CHARSET_GBK:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->loadingLrc(Ljava/io/File;Ljava/nio/charset/Charset;)V

    .line 307
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 308
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    return-void

    .line 315
    :cond_3
    invoke-static {v4, v0}, Lcom/yftech/car/widget/media/music/lyrics/LrcParser;->parseLine(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 319
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v4, v0

    .line 321
    :goto_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    if-eqz v4, :cond_5

    .line 324
    invoke-virtual {v4}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->build()Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    move-result-object p1

    goto :goto_4

    :cond_5
    sget-object p1, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->EMPTY:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    :goto_4
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    return-void
.end method

.method private loadingLyricDate(Ljava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const-string v0, "<"

    .line 336
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ">"

    .line 337
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v2, v0, -0x1

    .line 338
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 339
    new-instance v2, Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;

    invoke-direct {v2}, Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;-><init>()V

    const-string v3, ","

    .line 340
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 341
    array-length v3, v1

    new-array v3, v3, [I

    const/4 v4, 0x0

    move v5, v4

    .line 342
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 343
    aget-object v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {v2, v3}, Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;->setPlayTime([I)V

    .line 346
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v0, :cond_2

    .line 347
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "<"

    .line 348
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 350
    invoke-virtual {v2, v1}, Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;->setLyrics(Ljava/lang/String;)V

    goto :goto_1

    .line 352
    :cond_1
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;->setLyrics(Ljava/lang/String;)V

    .line 354
    :goto_1
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;->getLyrics()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v1, ""

    .line 356
    invoke-virtual {v2, v1}, Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;->setLyrics(Ljava/lang/String;)V

    .line 360
    :goto_2
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 362
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "<"

    .line 363
    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 365
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->loadingLyricDate(Ljava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_3
    return-void
.end method

.method private readFileLyric([Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    .line 416
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->isValid:Z

    if-nez v0, :cond_0

    const-string p0, "LyricForm"

    const-string/jumbo p1, "readFileLyric: isValid is false"

    .line 417
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz p1, :cond_9

    .line 420
    array-length v2, p1

    if-ge v1, v2, :cond_9

    .line 421
    iget-boolean v2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->isValid:Z

    if-nez v2, :cond_1

    const-string p0, "LyricForm"

    const-string/jumbo p1, "readFileLyric: isValid is false"

    .line 422
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 425
    :cond_1
    aget-object v2, p1, v1

    .line 426
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    const-string v3, "."

    .line 427
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->isFindNameLrc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 428
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v5, "LyricForm"

    .line 429
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readFile: music content lrc\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iput-boolean v4, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->isReadFile:Z

    .line 431
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v2, v3}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->loadingLrc(Ljava/io/File;Ljava/nio/charset/Charset;)V

    goto :goto_1

    :cond_2
    const-string v3, "."

    .line 432
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->isFindNameKrc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 433
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v5, "LyricForm"

    .line 434
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readFile: music content krc\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iput-boolean v4, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->isReadFile:Z

    .line 436
    invoke-direct {p0, v2}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->loadingKrc(Ljava/io/File;)Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    move-result-object v2

    iput-object v2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    .line 444
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->isReadFile:Z

    if-eqz v2, :cond_8

    return-void

    .line 447
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 450
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move v3, v0

    move v5, v3

    .line 451
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 452
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_6

    const/16 v6, 0x32

    if-le v5, v6, :cond_5

    move v4, v0

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v4, :cond_8

    .line 462
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 463
    invoke-direct {p0, v2, p2}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->readFileLyric([Ljava/io/File;Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method


# virtual methods
.method public parseLyric(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "usb/null"

    if-eqz p2, :cond_0

    const-string v1, "."

    .line 97
    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".lrc"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string p2, "LyricForm"

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: path=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->loadLyric(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    const-string p2, "LyricForm"

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseLyric: isValid=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-boolean p2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->isValid:Z

    if-eqz p2, :cond_1

    .line 106
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->setLyricMessageNoLyric()V

    .line 107
    iget-object p2, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm$1;

    invoke-direct {v0, p0, p1}, Lcom/yftech/car/widget/media/music/lyrics/LyricForm$1;-><init>(Lcom/yftech/car/widget/media/music/lyrics/LyricForm;Lcom/yftech/car/widget/media/music/lyrics/LyricView;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setValid(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->isValid:Z

    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->mHandler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricForm;->mLyric:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    return-void
.end method
