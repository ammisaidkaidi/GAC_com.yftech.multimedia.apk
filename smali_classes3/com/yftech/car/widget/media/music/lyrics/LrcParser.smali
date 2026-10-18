.class public Lcom/yftech/car/widget/media/music/lyrics/LrcParser;
.super Ljava/lang/Object;
.source "LrcParser.java"


# static fields
.field private static final ALBUM_KEY:Ljava/lang/String; = "al"

.field private static final ARTIST_KEY:Ljava/lang/String; = "ar"

.field private static final BY_KEY:Ljava/lang/String; = "by"

.field private static final NO_TS:J = -0x8000000000000000L

.field private static final OFFSET_KEY:Ljava/lang/String; = "offset"

.field private static final TAG:Ljava/lang/String; = "LrcParser"

.field private static final TITLE_KEY:Ljava/lang/String; = "ti"

.field private static mLinearMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseCommonLine(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;Ljava/lang/String;)V
    .locals 8

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :cond_0
    const/16 v3, 0x5d

    add-int/lit8 v4, v2, 0x1

    .line 155
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-static {v4}, Lcom/yftech/car/widget/media/music/lyrics/LrcParser;->parseTimeStamp(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 166
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    if-ne v2, v0, :cond_0

    .line 170
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 171
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 174
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 176
    invoke-virtual {p0, v1, v2, p1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->insertLine(JLjava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static parseCommonLine(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;Ljava/lang/String;Z)V
    .locals 2

    const-string p2, "["

    .line 184
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    const-string v0, ","

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 188
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string p2, "]"

    .line 189
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-virtual {p0, v0, v1, p1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->insertLine(JLjava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    :cond_0
    return-void
.end method

.method public static parseLine(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_3

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x41

    if-lt v0, v1, :cond_2

    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/music/lyrics/LrcParser;->parseMetaData(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/music/lyrics/LrcParser;->parseCommonLine(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_3
    sget v1, Lcom/yftech/car/widget/media/music/lyrics/LrcParser;->mLinearMax:I

    if-eq v1, v0, :cond_4

    .line 96
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->addTranslate(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    :cond_4
    :goto_1
    return-void
.end method

.method public static parseLine(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p1, :cond_3

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x41

    if-lt v0, v1, :cond_2

    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/music/lyrics/LrcParser;->parseMetaData(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;Ljava/lang/String;)V

    goto :goto_1

    .line 103
    :cond_2
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/yftech/car/widget/media/music/lyrics/LrcParser;->parseCommonLine(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method static parseLyric(Ljava/io/InputStream;Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric;
    .locals 3

    .line 45
    new-instance v0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;-><init>()V

    .line 48
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p0, 0x0

    .line 54
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-static {v0, p1}, Lcom/yftech/car/widget/media/music/lyrics/LrcParser;->parseLine(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 59
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz p0, :cond_1

    .line 65
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v1

    .line 67
    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 70
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 74
    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 79
    :goto_3
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->build()Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    move-result-object p0

    return-object p0
.end method

.method private static parseMetaData(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    const/16 v1, 0x3a

    .line 112
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    const/16 v3, 0x5d

    add-int/lit8 v4, v1, 0x1

    .line 114
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v2, :cond_6

    const/4 v5, 0x1

    .line 116
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    .line 119
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x3cc89b6d

    if-eq v3, v4, :cond_4

    const/16 v4, 0xc2b

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc31

    if-eq v3, v4, :cond_2

    const/16 v0, 0xc57

    if-eq v3, v0, :cond_1

    const/16 v0, 0xe75

    if-eq v3, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "ti"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const-string v0, "by"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string v3, "ar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_3
    const-string v0, "al"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v5

    goto :goto_1

    :cond_4
    const-string v0, "offset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string p0, "LrcParser"

    const-string p1, "parseMetaData: "

    .line 141
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 138
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->setTitle(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    goto :goto_2

    .line 135
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->setBy(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    goto :goto_2

    .line 132
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->setArtist(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    goto :goto_2

    .line 129
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->setAlbum(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    goto :goto_2

    .line 123
    :pswitch_4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->setOffset(J)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static parseText(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric;
    .locals 4

    if-eqz p0, :cond_1

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    new-instance v0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;-><init>()V

    const-string v1, "\n"

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 31
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 34
    aget-object v3, p0, v2

    .line 35
    invoke-static {v0, v3}, Lcom/yftech/car/widget/media/music/lyrics/LrcParser;->parseLine(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->build()Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    move-result-object p0

    return-object p0

    .line 40
    :cond_1
    sget-object p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->EMPTY:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    return-object p0
.end method

.method private static parseTimeStamp(Ljava/lang/String;)J
    .locals 8

    const/16 v0, 0x3a

    .line 196
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-wide/high16 v2, -0x8000000000000000L

    if-gez v1, :cond_0

    return-wide v2

    :cond_0
    const/4 v4, 0x0

    .line 201
    :try_start_0
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const v5, 0xea60

    mul-int/2addr v4, v5

    int-to-long v4, v4

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    const/16 v6, 0x2e

    add-int/lit8 v1, v1, 0x1

    .line 207
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-gez v6, :cond_1

    .line 209
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    :cond_1
    if-gez v6, :cond_2

    .line 214
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v0, p0

    add-long/2addr v4, v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 216
    :cond_2
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr v4, v0

    add-int/lit8 v6, v6, 0x1

    .line 217
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    mul-int/lit8 p0, p0, 0xa

    int-to-long v0, p0

    add-long/2addr v4, v0

    :goto_0
    return-wide v4

    .line 222
    :goto_1
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return-wide v2

    :catch_1
    move-exception p0

    .line 203
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return-wide v2
.end method

.method public static setLinearMax(I)V
    .locals 0

    .line 83
    sput p0, Lcom/yftech/car/widget/media/music/lyrics/LrcParser;->mLinearMax:I

    return-void
.end method
