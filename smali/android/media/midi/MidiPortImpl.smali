.class Landroid/media/midi/MidiPortImpl;
.super Ljava/lang/Object;
.source "MidiPortImpl.java"


# static fields
.field private static final DATA_PACKET_OVERHEAD:I = 0x9

.field public static final MAX_PACKET_DATA_SIZE:I = 0x3f7

.field public static final MAX_PACKET_SIZE:I = 0x400

.field public static final PACKET_TYPE_DATA:I = 0x1

.field public static final PACKET_TYPE_FLUSH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MidiPort"

.field private static final TIMESTAMP_SIZE:I = 0x8


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataOffset([BI)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static getDataSize([BI)I
    .locals 0

    add-int/lit8 p1, p1, -0x9

    return p1
.end method

.method public static getPacketTimestamp([BI)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 129
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-long/2addr v0, v3

    int-to-long v3, v4

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static getPacketType([BI)I
    .locals 0

    const/4 p1, 0x0

    .line 98
    aget-byte p0, p0, p1

    return p0
.end method

.method public static packData([BIIJ[B)I
    .locals 2

    const/16 v0, 0x3f7

    if-le p2, v0, :cond_0

    move p2, v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 72
    aput-byte v1, p5, v0

    .line 74
    invoke-static {p0, p1, p5, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/2addr v1, p2

    :goto_0
    const/16 p0, 0x8

    if-ge v0, p0, :cond_1

    add-int/lit8 p1, v1, 0x1

    long-to-int p2, p3

    int-to-byte p2, p2

    .line 79
    aput-byte p2, p5, v1

    shr-long/2addr p3, p0

    add-int/lit8 v0, v0, 0x1

    move v1, p1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static packFlush([B)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 90
    aput-byte v1, p0, v0

    const/4 p0, 0x1

    return p0
.end method
