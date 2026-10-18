.class public Landroid/media/Media2HTTPConnection;
.super Ljava/lang/Object;
.source "Media2HTTPConnection.java"


# static fields
.field private static final CONNECT_TIMEOUT_MS:I = 0x7530

.field private static final HTTP_TEMP_REDIRECT:I = 0x133

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "Media2HTTPConnection"

.field private static final VERBOSE:Z = false


# instance fields
.field private mAllowCrossDomainRedirect:Z

.field private mAllowCrossProtocolRedirect:Z

.field private mConnection:Ljava/net/HttpURLConnection;

.field private mCurrentOffset:J

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInputStream:Ljava/io/InputStream;

.field private mTotalSize:J

.field private mURL:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Landroid/media/Media2HTTPConnection;->mCurrentOffset:J

    const/4 v2, 0x0

    .line 49
    iput-object v2, p0, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    .line 50
    iput-object v2, p0, Landroid/media/Media2HTTPConnection;->mHeaders:Ljava/util/Map;

    .line 51
    iput-object v2, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 52
    iput-wide v0, p0, Landroid/media/Media2HTTPConnection;->mTotalSize:J

    .line 53
    iput-object v2, p0, Landroid/media/Media2HTTPConnection;->mInputStream:Ljava/io/InputStream;

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Landroid/media/Media2HTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 56
    iput-boolean v0, p0, Landroid/media/Media2HTTPConnection;->mAllowCrossProtocolRedirect:Z

    .line 63
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Media2HTTPConnection"

    const-string v0, "Media2HTTPConnection: Unexpected. No CookieHandler found."

    .line 65
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\r\n"

    .line 110
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 111
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    const-string v5, ":"

    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 114
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-direct {p0, v6, v4}, Landroid/media/Media2HTTPConnection;->filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 118
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android-allow-cross-domain-redirect"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    invoke-direct {p0, p2}, Landroid/media/Media2HTTPConnection;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/media/Media2HTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 100
    iget-boolean p1, p0, Landroid/media/Media2HTTPConnection;->mAllowCrossDomainRedirect:Z

    iput-boolean p1, p0, Landroid/media/Media2HTTPConnection;->mAllowCrossProtocolRedirect:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final isLocalHost(Ljava/net/URL;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    :try_start_0
    const-string v1, "localhost"

    .line 161
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    return v2

    .line 164
    :cond_2
    invoke-static {p0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    return v2

    :catch_0
    :cond_3
    return v0
.end method

.method private parseBoolean(Ljava/lang/String;)Z
    .locals 5

    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 88
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    move p0, v0

    :cond_0
    return p0

    :catch_0
    const-string/jumbo v1, "true"

    .line 90
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "yes"

    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move p0, v0

    :cond_2
    return p0
.end method

.method private seekTo(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Landroid/media/Media2HTTPConnection;->teardownConnection()V

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    .line 179
    :try_start_0
    iget-object v3, p0, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    .line 182
    invoke-static {v3}, Landroid/media/Media2HTTPConnection;->isLocalHost(Ljava/net/URL;)Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_0

    .line 186
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v3, v5}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    iput-object v3, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 188
    :cond_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    iput-object v3, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 190
    :goto_1
    iget-object v3, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const/16 v5, 0x7530

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 193
    iget-object v3, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    iget-boolean v5, p0, Landroid/media/Media2HTTPConnection;->mAllowCrossDomainRedirect:Z

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 195
    iget-object v3, p0, Landroid/media/Media2HTTPConnection;->mHeaders:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 196
    iget-object v3, p0, Landroid/media/Media2HTTPConnection;->mHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 197
    iget-object v6, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 198
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 197
    invoke-virtual {v6, v7, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v3, p1, v5

    if-lez v3, :cond_2

    .line 203
    iget-object v5, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v6, "Range"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_2
    iget-object v5, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0x12c

    const/16 v7, 0x133

    if-eq v5, v6, :cond_9

    const/16 v6, 0x12d

    if-eq v5, v6, :cond_9

    const/16 v6, 0x12e

    if-eq v5, v6, :cond_9

    const/16 v6, 0x12f

    if-eq v5, v6, :cond_9

    if-eq v5, v7, :cond_9

    .line 253
    iget-boolean v0, p0, Landroid/media/Media2HTTPConnection;->mAllowCrossDomainRedirect:Z

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    :cond_3
    const/16 v0, 0xce

    if-ne v5, v0, :cond_4

    .line 264
    iget-object v4, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v6, "Content-Range"

    .line 265
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 267
    iput-wide v1, p0, Landroid/media/Media2HTTPConnection;->mTotalSize:J

    if-eqz v4, :cond_5

    const/16 v6, 0x2f

    .line 273
    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ltz v6, :cond_5

    add-int/lit8 v6, v6, 0x1

    .line 276
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 279
    :try_start_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Landroid/media/Media2HTTPConnection;->mTotalSize:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_4
    const/16 v4, 0xc8

    if-ne v5, v4, :cond_8

    .line 287
    :try_start_2
    iget-object v4, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    int-to-long v6, v4

    iput-wide v6, p0, Landroid/media/Media2HTTPConnection;->mTotalSize:J

    :catch_0
    :cond_5
    :goto_3
    if-lez v3, :cond_7

    if-ne v5, v0, :cond_6

    goto :goto_4

    .line 293
    :cond_6
    new-instance p1, Ljava/net/ProtocolException;

    invoke-direct {p1}, Ljava/net/ProtocolException;-><init>()V

    throw p1

    .line 296
    :cond_7
    :goto_4
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 297
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Landroid/media/Media2HTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 299
    iput-wide p1, p0, Landroid/media/Media2HTTPConnection;->mCurrentOffset:J

    return-void

    .line 285
    :cond_8
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_9
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x14

    if-gt v0, v3, :cond_14

    .line 221
    iget-object v3, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    if-ne v5, v7, :cond_b

    const-string v6, "GET"

    .line 223
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "HEAD"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_5

    .line 227
    :cond_a
    new-instance p1, Ljava/net/NoRouteToHostException;

    const-string p2, "Invalid redirect"

    invoke-direct {p1, p2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :cond_b
    :goto_5
    iget-object v3, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v6, "Location"

    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 233
    new-instance v6, Ljava/net/URL;

    iget-object v8, p0, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    invoke-direct {v6, v8, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v8, "https"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 235
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v8, "http"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_6

    .line 236
    :cond_c
    new-instance p1, Ljava/net/NoRouteToHostException;

    const-string p2, "Unsupported protocol redirect"

    invoke-direct {p1, p2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 238
    :cond_d
    :goto_6
    iget-object v3, p0, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 239
    iget-boolean v8, p0, Landroid/media/Media2HTTPConnection;->mAllowCrossProtocolRedirect:Z

    if-nez v8, :cond_f

    if-eqz v3, :cond_e

    goto :goto_7

    .line 240
    :cond_e
    new-instance p1, Ljava/net/NoRouteToHostException;

    const-string p2, "Cross-protocol redirects are disallowed"

    invoke-direct {p1, p2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 242
    :cond_f
    :goto_7
    iget-object v3, p0, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 243
    iget-boolean v8, p0, Landroid/media/Media2HTTPConnection;->mAllowCrossDomainRedirect:Z

    if-nez v8, :cond_11

    if-eqz v3, :cond_10

    goto :goto_8

    .line 244
    :cond_10
    new-instance p1, Ljava/net/NoRouteToHostException;

    const-string p2, "Cross-domain redirects are disallowed"

    invoke-direct {p1, p2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    :goto_8
    if-eq v5, v7, :cond_12

    .line 249
    iput-object v6, p0, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    :cond_12
    move-object v3, v6

    goto/16 :goto_0

    .line 231
    :cond_13
    new-instance p1, Ljava/net/NoRouteToHostException;

    const-string p2, "Invalid redirect"

    invoke-direct {p1, p2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_14
    new-instance p1, Ljava/net/NoRouteToHostException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many redirects: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 301
    iput-wide v1, p0, Landroid/media/Media2HTTPConnection;->mTotalSize:J

    .line 302
    invoke-direct {p0}, Landroid/media/Media2HTTPConnection;->teardownConnection()V

    .line 303
    iput-wide v1, p0, Landroid/media/Media2HTTPConnection;->mCurrentOffset:J

    .line 305
    throw p1
.end method

.method private teardownConnection()V
    .locals 2

    .line 133
    iget-object v0, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Landroid/media/Media2HTTPConnection;->mInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    iget-object v0, p0, Landroid/media/Media2HTTPConnection;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :catch_0
    iput-object v1, p0, Landroid/media/Media2HTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 142
    :cond_0
    iget-object v0, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 143
    iput-object v1, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-wide/16 v0, -0x1

    .line 145
    iput-wide v0, p0, Landroid/media/Media2HTTPConnection;->mCurrentOffset:J

    :cond_1
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 75
    :try_start_0
    invoke-virtual {p0}, Landroid/media/Media2HTTPConnection;->disconnect()V

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Landroid/media/Media2HTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 77
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    .line 78
    invoke-direct {p0, p2}, Landroid/media/Media2HTTPConnection;->convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroid/media/Media2HTTPConnection;->mHeaders:Ljava/util/Map;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public disconnect()V
    .locals 1

    .line 127
    invoke-direct {p0}, Landroid/media/Media2HTTPConnection;->teardownConnection()V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Landroid/media/Media2HTTPConnection;->mHeaders:Ljava/util/Map;

    .line 129
    iput-object v0, p0, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    return-void
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 2

    .line 371
    iget-object v0, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 373
    :try_start_0
    invoke-direct {p0, v0, v1}, Landroid/media/Media2HTTPConnection;->seekTo(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "application/octet-stream"

    return-object p0

    .line 379
    :cond_0
    :goto_0
    iget-object p0, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSize()J
    .locals 2

    .line 359
    iget-object v0, p0, Landroid/media/Media2HTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 361
    :try_start_0
    invoke-direct {p0, v0, v1}, Landroid/media/Media2HTTPConnection;->seekTo(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0

    .line 367
    :cond_0
    :goto_0
    iget-wide v0, p0, Landroid/media/Media2HTTPConnection;->mTotalSize:J

    return-wide v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 0

    .line 383
    iget-object p0, p0, Landroid/media/Media2HTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readAt(J[BI)I
    .locals 6

    .line 310
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 311
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 313
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v0, -0x1

    const/16 v1, -0x3f2

    .line 316
    :try_start_0
    iget-wide v2, p0, Landroid/media/Media2HTTPConnection;->mCurrentOffset:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 317
    invoke-direct {p0, p1, p2}, Landroid/media/Media2HTTPConnection;->seekTo(J)V

    .line 320
    :cond_0
    iget-object v2, p0, Landroid/media/Media2HTTPConnection;->mInputStream:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3, p4}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-ne p3, v0, :cond_1

    move p3, v3

    .line 328
    :cond_1
    iget-wide v2, p0, Landroid/media/Media2HTTPConnection;->mCurrentOffset:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/media/Media2HTTPConnection;->mCurrentOffset:J
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :catch_0
    return v0

    :catch_1
    return v0

    :catch_2
    move-exception p0

    const-string p3, "Media2HTTPConnection"

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readAt "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " => "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_3
    move-exception p0

    const-string p3, "Media2HTTPConnection"

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readAt "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " => "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_4
    move-exception p0

    const-string p3, "Media2HTTPConnection"

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readAt "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " => "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
