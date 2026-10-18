.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SntpClient$InvalidServerReplyException;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final NTP_LEAP_NOSYNC:I = 0x3

.field private static final NTP_MODE_BROADCAST:I = 0x5

.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_MODE_SERVER:I = 0x4

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_STRATUM_DEATH:I = 0x0

.field private static final NTP_STRATUM_MAX:I = 0xf

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final REFERENCE_TIME_OFFSET:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkValidServerReply(BBIJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SntpClient$InvalidServerReplyException;
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "untrusted mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    const/16 p0, 0xf

    if-gt p2, p0, :cond_3

    const-wide/16 p0, 0x0

    cmp-long p0, p3, p0

    if-eqz p0, :cond_2

    return-void

    .line 224
    :cond_2
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo p1, "zero transmitTime"

    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 221
    :cond_3
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "untrusted stratum: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 215
    :cond_4
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo p1, "unsynchronized server"

    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private read32([BI)J
    .locals 6

    .line 232
    aget-byte p0, p1, p2

    add-int/lit8 v0, p2, 0x1

    .line 233
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x2

    .line 234
    aget-byte v1, p1, v1

    add-int/lit8 p2, p2, 0x3

    .line 235
    aget-byte p1, p1, p2

    and-int/lit16 p2, p0, 0x80

    const/16 v2, 0x80

    if-ne p2, v2, :cond_0

    and-int/lit8 p0, p0, 0x7f

    add-int/2addr p0, v2

    :cond_0
    and-int/lit16 p2, v0, 0x80

    if-ne p2, v2, :cond_1

    and-int/lit8 p2, v0, 0x7f

    add-int/lit16 v0, p2, 0x80

    :cond_1
    and-int/lit16 p2, v1, 0x80

    if-ne p2, v2, :cond_2

    and-int/lit8 p2, v1, 0x7f

    add-int/lit16 v1, p2, 0x80

    :cond_2
    and-int/lit16 p2, p1, 0x80

    if-ne p2, v2, :cond_3

    and-int/lit8 p1, p1, 0x7f

    add-int/2addr p1, v2

    :cond_3
    int-to-long v2, p0

    const/16 p0, 0x18

    shl-long/2addr v2, p0

    int-to-long v4, v0

    const/16 p0, 0x10

    shl-long/2addr v4, p0

    add-long/2addr v2, v4

    int-to-long v0, v1

    const/16 p0, 0x8

    shl-long/2addr v0, p0

    add-long/2addr v2, v0

    int-to-long p0, p1

    add-long/2addr v2, p0

    return-wide v2
.end method

.method private readTimeStamp([BI)J
    .locals 4

    .line 251
    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v0

    add-int/lit8 p2, p2, 0x4

    .line 252
    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    cmp-long p2, p0, v2

    if-nez p2, :cond_0

    return-wide v2

    :cond_0
    const-wide v2, 0x83aa7e80L

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    mul-long/2addr p0, v2

    const-wide v2, 0x100000000L

    .line 257
    div-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private writeTimeStamp([BIJ)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long p0, p3, v0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    add-int/lit8 p0, p2, 0x8

    .line 267
    invoke-static {p1, p2, p0, v0}, Ljava/util/Arrays;->fill([BIIB)V

    return-void

    :cond_0
    const-wide/16 v1, 0x3e8

    .line 271
    div-long v3, p3, v1

    mul-long v5, v3, v1

    sub-long/2addr p3, v5

    const-wide v5, 0x83aa7e80L

    add-long/2addr v3, v5

    add-int/lit8 p0, p2, 0x1

    const/16 v5, 0x18

    shr-long v6, v3, v5

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 276
    aput-byte v6, p1, p2

    add-int/lit8 p2, p0, 0x1

    const/16 v6, 0x10

    shr-long v7, v3, v6

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 277
    aput-byte v7, p1, p0

    add-int/lit8 p0, p2, 0x1

    const/16 v7, 0x8

    shr-long v8, v3, v7

    long-to-int v8, v8

    int-to-byte v8, v8

    .line 278
    aput-byte v8, p1, p2

    add-int/lit8 p2, p0, 0x1

    shr-long/2addr v3, v0

    long-to-int v0, v3

    int-to-byte v0, v0

    .line 279
    aput-byte v0, p1, p0

    const-wide v3, 0x100000000L

    mul-long/2addr p3, v3

    .line 281
    div-long/2addr p3, v1

    add-int/lit8 p0, p2, 0x1

    shr-long v0, p3, v5

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 283
    aput-byte v0, p1, p2

    add-int/lit8 p2, p0, 0x1

    shr-long v0, p3, v6

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 284
    aput-byte v0, p1, p0

    add-int/lit8 p0, p2, 0x1

    shr-long/2addr p3, v7

    long-to-int p3, p3

    int-to-byte p3, p3

    .line 285
    aput-byte p3, p1, p2

    .line 287
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p2

    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double/2addr p2, v0

    double-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, p1, p0

    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .locals 2

    .line 189
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .locals 2

    .line 199
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    .line 208
    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p0, "SntpClient"

    const-string p1, "Shame on you for calling the hidden API requestTime()!"

    .line 179
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public requestTime(Ljava/lang/String;ILandroid/net/Network;)Z
    .locals 1

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p3, v0}, Landroid/net/Network;->setPrivateDnsBypass(Z)V

    .line 93
    :try_start_0
    invoke-virtual {p3, p1}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x7b

    .line 99
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/net/SntpClient;->requestTime(Ljava/net/InetAddress;IILandroid/net/Network;)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SntpClient"

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "request time failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public requestTime(Ljava/net/InetAddress;IILandroid/net/Network;)Z
    .locals 20

    move-object/from16 v0, p0

    const/16 v1, -0xbf

    .line 104
    invoke-static {v1}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 106
    :try_start_0
    new-instance v4, Ljava/net/DatagramSocket;

    invoke-direct {v4}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v5, p4

    .line 107
    :try_start_1
    invoke-virtual {v5, v4}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    move/from16 v3, p3

    .line 108
    invoke-virtual {v4, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/16 v3, 0x30

    .line 109
    new-array v3, v3, [B

    .line 110
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, v3

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct {v5, v3, v6, v7, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v6, 0x1b

    aput-byte v6, v3, v2

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const/16 v6, 0x28

    .line 120
    invoke-direct {v0, v3, v6, v8, v9}, Landroid/net/SntpClient;->writeTimeStamp([BIJ)V

    .line 122
    invoke-virtual {v4, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 125
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v12, v3

    invoke-direct {v5, v3, v12}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 126
    invoke-virtual {v4, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v10, v12, v10

    add-long/2addr v8, v10

    .line 131
    aget-byte v5, v3, v2

    shr-int/lit8 v5, v5, 0x6

    and-int/lit8 v5, v5, 0x3

    int-to-byte v5, v5

    .line 132
    aget-byte v14, v3, v2

    and-int/lit8 v14, v14, 0x7

    int-to-byte v14, v14

    const/4 v15, 0x1

    .line 133
    aget-byte v2, v3, v15

    and-int/lit16 v2, v2, 0xff

    const/16 v15, 0x18

    .line 134
    invoke-direct {v0, v3, v15}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v16

    const/16 v15, 0x20

    .line 135
    invoke-direct {v0, v3, v15}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v18

    .line 136
    invoke-direct {v0, v3, v6}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v6

    .line 140
    invoke-static {v5, v14, v2, v6, v7}, Landroid/net/SntpClient;->checkValidServerReply(BBIJ)V

    sub-long v2, v6, v18

    sub-long/2addr v10, v2

    sub-long v18, v18, v16

    sub-long/2addr v6, v8

    add-long v18, v18, v6

    const-wide/16 v2, 0x2

    .line 151
    div-long v2, v18, v2

    .line 152
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10, v11, v2, v3}, Landroid/net/EventLogTags;->writeNtpSuccess(Ljava/lang/String;JJ)V

    const-string v5, "SntpClient"

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "round trip: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms, clock offset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-long/2addr v8, v2

    .line 160
    iput-wide v8, v0, Landroid/net/SntpClient;->mNtpTime:J

    .line 161
    iput-wide v12, v0, Landroid/net/SntpClient;->mNtpTimeReference:J

    .line 162
    iput-wide v10, v0, Landroid/net/SntpClient;->mRoundTripTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    .line 171
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_1

    :catch_1
    move-exception v0

    .line 164
    :goto_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SntpClient"

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "request time failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_0

    .line 169
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 171
    :cond_0
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 v1, 0x0

    return v1

    :goto_1
    if-eqz v4, :cond_1

    .line 169
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    .line 171
    :cond_1
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0
.end method
