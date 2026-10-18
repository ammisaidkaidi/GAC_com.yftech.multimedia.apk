.class public Landroid/net/NetworkStatsHistory;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStatsHistory$ParcelUtils;,
        Landroid/net/NetworkStatsHistory$DataStreamUtils;,
        Landroid/net/NetworkStatsHistory$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELD_ACTIVE_TIME:I = 0x1

.field public static final FIELD_ALL:I = -0x1

.field public static final FIELD_OPERATIONS:I = 0x20

.field public static final FIELD_RX_BYTES:I = 0x2

.field public static final FIELD_RX_PACKETS:I = 0x4

.field public static final FIELD_TX_BYTES:I = 0x8

.field public static final FIELD_TX_PACKETS:I = 0x10

.field private static final VERSION_ADD_ACTIVE:I = 0x3

.field private static final VERSION_ADD_PACKETS:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# instance fields
.field private activeTime:[J

.field private bucketCount:I

.field private bucketDuration:J

.field private bucketStart:[J

.field private operations:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private totalBytes:J

.field private txBytes:[J

.field private txPackets:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 704
    new-instance v0, Landroid/net/NetworkStatsHistory$1;

    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStatsHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, -0x1

    .line 103
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1

    const/4 v0, -0x1

    .line 107
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    return-void
.end method

.method public constructor <init>(JII)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-wide p1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 112
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    .line 113
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    :cond_0
    and-int/lit8 p1, p4, 0x2

    if-eqz p1, :cond_1

    .line 114
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    :cond_1
    and-int/lit8 p1, p4, 0x4

    if-eqz p1, :cond_2

    .line 115
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    :cond_2
    and-int/lit8 p1, p4, 0x8

    if-eqz p1, :cond_3

    .line 116
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    :cond_3
    and-int/lit8 p1, p4, 0x10

    if-eqz p1, :cond_4

    .line 117
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    :cond_4
    and-int/lit8 p1, p4, 0x20

    if-eqz p1, :cond_5

    .line 118
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    :cond_5
    const/4 p1, 0x0

    .line 119
    iput p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    const-wide/16 p1, 0x0

    .line 120
    iput-wide p1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkStatsHistory;J)V
    .locals 1

    .line 124
    invoke-virtual {p1, p2, p3}, Landroid/net/NetworkStatsHistory;->estimateResizeBuckets(J)I

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 125
    invoke-virtual {p0, p1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 130
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 131
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 132
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 133
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 134
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 135
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 136
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 137
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v0, v0

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 185
    new-instance p0, Ljava/net/ProtocolException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unexpected version: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 171
    :pswitch_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 172
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 173
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v0, v0

    new-array v0, v0, [J

    :goto_0
    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 175
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 176
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 177
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 178
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 179
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 180
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length p1, p1

    iput p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 181
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v0

    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    goto :goto_1

    .line 158
    :pswitch_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 159
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 160
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 161
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 162
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 163
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length p1, p1

    new-array p1, p1, [J

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 164
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length p1, p1

    new-array p1, p1, [J

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 165
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length p1, p1

    iput p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 166
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v0

    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 189
    :goto_1
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length p1, p1

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    array-length p1, p1

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    array-length p1, p1

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    array-length p1, p1

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    array-length p1, p1

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    array-length p1, p1

    iget p0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne p1, p0, :cond_1

    return-void

    .line 192
    :cond_1
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Mismatched history lengths"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static addLong([JIJ)V
    .locals 2

    if-eqz p0, :cond_0

    .line 725
    aget-wide v0, p0, p1

    add-long/2addr v0, p2

    aput-wide v0, p0, p1

    :cond_0
    return-void
.end method

.method private ensureBuckets(JJ)V
    .locals 4

    .line 410
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long v0, p1, v0

    sub-long/2addr p1, v0

    .line 411
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long v2, p3, v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long/2addr v0, v2

    add-long/2addr p3, v0

    :goto_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    .line 415
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    const/4 v1, 0x0

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v0, v1, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    if-gez v0, :cond_0

    not-int v0, v0

    .line 418
    invoke-direct {p0, v0, p1, p2}, Landroid/net/NetworkStatsHistory;->insertBucket(IJ)V

    .line 413
    :cond_0
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getLong([JIJ)J
    .locals 0

    if-eqz p0, :cond_0

    .line 717
    aget-wide p2, p0, p1

    :cond_0
    return-wide p2
.end method

.method private insertBucket(IJ)V
    .locals 4

    .line 428
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    if-lt v0, v1, :cond_5

    .line 429
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v0, v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 430
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 431
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 432
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 433
    :cond_1
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 434
    :cond_2
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 435
    :cond_3
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 436
    :cond_4
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 440
    :cond_5
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge p1, v0, :cond_b

    add-int/lit8 v0, p1, 0x1

    .line 442
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    sub-int/2addr v1, p1

    .line 444
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    :cond_6
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    :cond_7
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    :cond_8
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    :cond_9
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    :cond_a
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    :cond_b
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aput-wide p2, v0, p1

    .line 454
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    const-wide/16 v0, 0x0

    invoke-static {p2, p1, v0, v1}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 455
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {p2, p1, v0, v1}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 456
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {p2, p1, v0, v1}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 457
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {p2, p1, v0, v1}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 458
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {p2, p1, v0, v1}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 459
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {p2, p1, v0, v1}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 460
    iget p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    return-void
.end method

.method public static randomLong(Ljava/util/Random;JJ)J
    .locals 1

    long-to-float v0, p1

    .line 614
    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result p0

    sub-long/2addr p3, p1

    long-to-float p1, p3

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    float-to-long p0, v0

    return-wide p0
.end method

.method private static setLong([JIJ)V
    .locals 0

    if-eqz p0, :cond_0

    .line 721
    aput-wide p2, p0, p1

    :cond_0
    return-void
.end method

.method private static writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V
    .locals 2

    if-eqz p3, :cond_0

    .line 693
    aget-wide v0, p3, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 467
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 468
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 469
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v0, :cond_1

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 470
    :cond_1
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v0, :cond_2

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 471
    :cond_2
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v0, :cond_3

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 472
    :cond_3
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v0, :cond_4

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 473
    :cond_4
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v0, :cond_5

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    :cond_5
    const/4 v0, 0x0

    .line 474
    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    const-wide/16 v0, 0x0

    .line 475
    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 6

    const-string v0, "NetworkStatsHistory: bucketDuration="

    .line 631
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 632
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 633
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 635
    :cond_0
    iget p2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 p2, p2, -0x20

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    const-string p2, "(omitting "

    .line 637
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string p2, " buckets)"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 640
    :cond_1
    :goto_1
    iget p2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, p2, :cond_7

    const-string/jumbo p2, "st="

    .line 641
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v4, p2, v0

    div-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 642
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz p2, :cond_2

    const-string p2, " rb="

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v4, p2, v0

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 643
    :cond_2
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz p2, :cond_3

    const-string p2, " rp="

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v4, p2, v0

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 644
    :cond_3
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz p2, :cond_4

    const-string p2, " tb="

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v4, p2, v0

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 645
    :cond_4
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz p2, :cond_5

    const-string p2, " tp="

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v4, p2, v0

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 646
    :cond_5
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz p2, :cond_6

    const-string p2, " op="

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v4, p2, v0

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 647
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 650
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public dumpCheckin(Ljava/io/PrintWriter;)V
    .locals 7

    const-string v0, "d,"

    .line 654
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 655
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 656
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const/4 v0, 0x0

    .line 658
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v1, :cond_5

    const-string v1, "b,"

    .line 659
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v4, v1, v0

    div-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 661
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v5, v4, v0

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_1

    :cond_0
    const-string v4, "*"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 662
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v5, v4, v0

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_2

    :cond_1
    const-string v4, "*"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 663
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v5, v4, v0

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_3

    :cond_2
    const-string v4, "*"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 664
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v5, v4, v0

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_4

    :cond_3
    const-string v4, "*"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 665
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v4, v1, v0

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_5

    :cond_4
    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 666
    :goto_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public estimateResizeBuckets(J)I
    .locals 4

    .line 729
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    mul-long/2addr v0, v2

    div-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method public generateRandom(JJJ)V
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 569
    new-instance v15, Ljava/util/Random;

    invoke-direct {v15}, Ljava/util/Random;-><init>()V

    .line 571
    invoke-virtual {v15}, Ljava/util/Random;->nextFloat()F

    move-result v0

    move-wide/from16 v1, p5

    long-to-float v1, v1

    mul-float v2, v1, v0

    float-to-long v5, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    float-to-long v9, v1

    const-wide/16 v0, 0x400

    .line 575
    div-long v7, v5, v0

    .line 576
    div-long v11, v9, v0

    const-wide/16 v0, 0x800

    .line 577
    div-long v13, v5, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 579
    invoke-virtual/range {v0 .. v15}, Landroid/net/NetworkStatsHistory;->generateRandom(JJJJJJJLjava/util/Random;)V

    return-void
.end method

.method public generateRandom(JJJJJJJLjava/util/Random;)V
    .locals 26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-wide/from16 v0, p3

    move-object/from16 v2, p15

    .line 588
    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    .line 590
    new-instance v14, Landroid/net/NetworkStats$Entry;

    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    move-object v3, v14

    move-object/from16 v19, v14

    move-wide v14, v15

    move-wide/from16 v16, v17

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    move-wide/from16 v11, p13

    :goto_0
    const-wide/16 v13, 0x400

    cmp-long v15, v3, v13

    if-gtz v15, :cond_1

    const-wide/16 v15, 0x80

    cmp-long v17, v5, v15

    if-gtz v17, :cond_1

    cmp-long v13, v7, v13

    if-gtz v13, :cond_1

    cmp-long v13, v9, v15

    if-gtz v13, :cond_1

    const-wide/16 v13, 0x20

    cmp-long v13, v11, v13

    if-lez v13, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    :goto_1
    move-wide/from16 v13, p1

    .line 594
    invoke-static {v2, v13, v14, v0, v1}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v15

    sub-long v17, v0, v15

    const-wide/16 v20, 0x2

    .line 595
    div-long v0, v17, v20

    const-wide/16 v13, 0x0

    invoke-static {v2, v13, v14, v0, v1}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    add-long/2addr v0, v15

    move-wide/from16 v22, v0

    .line 597
    invoke-static {v2, v13, v14, v3, v4}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    move-wide/from16 v24, v15

    move-object/from16 v15, v19

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 598
    invoke-static {v2, v13, v14, v5, v6}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 599
    invoke-static {v2, v13, v14, v7, v8}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 600
    invoke-static {v2, v13, v14, v9, v10}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 601
    invoke-static {v2, v13, v14, v11, v12}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v15, Landroid/net/NetworkStats$Entry;->operations:J

    .line 603
    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->rxBytes:J

    sub-long/2addr v3, v0

    .line 604
    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long/2addr v5, v0

    .line 605
    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long/2addr v7, v0

    .line 606
    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long/2addr v9, v0

    .line 607
    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->operations:J

    sub-long/2addr v11, v0

    move-object/from16 p5, p0

    move-wide/from16 p6, v24

    move-wide/from16 p8, v22

    move-object/from16 p10, v15

    .line 609
    invoke-virtual/range {p5 .. p10}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    move-wide/from16 v0, p3

    goto :goto_0
.end method

.method public getBucketDuration()J
    .locals 2

    .line 218
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    return-wide v0
.end method

.method public getEnd()J
    .locals 5

    .line 230
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_0

    .line 231
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v0, v1

    iget-wide v3, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v1, v3

    return-wide v1

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getIndexAfter(J)I
    .locals 3

    .line 263
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result p1

    if-gez p1, :cond_0

    not-int p1, p1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 269
    :goto_0
    iget p0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, v2, p0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method

.method public getIndexBefore(J)I
    .locals 3

    .line 249
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result p1

    if-gez p1, :cond_0

    not-int p1, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 255
    :goto_0
    iget p0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, v2, p0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method

.method public getStart()J
    .locals 2

    .line 222
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_0

    .line 223
    iget-object p0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 241
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-wide v0
.end method

.method public getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 5

    if-eqz p2, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    new-instance p2, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {p2}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    .line 277
    :goto_0
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v1, v0, p1

    iput-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 278
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    iput-wide v0, p2, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 279
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    const-wide/16 v1, -0x1

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v3

    iput-wide v3, p2, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 280
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v3

    iput-wide v3, p2, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 281
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v3

    iput-wide v3, p2, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 282
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v3

    iput-wide v3, p2, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 283
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v3

    iput-wide v3, p2, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 284
    iget-object p0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {p0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide p0

    iput-wide p0, p2, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    return-object p2
.end method

.method public getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    if-eqz p7, :cond_0

    move-object/from16 v5, p7

    goto :goto_0

    .line 521
    :cond_0
    new-instance v5, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v5}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    :goto_0
    sub-long v6, v3, v1

    .line 522
    iput-wide v6, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 523
    iput-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 524
    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    const-wide/16 v7, -0x1

    const-wide/16 v9, 0x0

    if-eqz v6, :cond_1

    move-wide v11, v9

    goto :goto_1

    :cond_1
    move-wide v11, v7

    :goto_1
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 525
    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v6, :cond_2

    move-wide v11, v9

    goto :goto_2

    :cond_2
    move-wide v11, v7

    :goto_2
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 526
    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v6, :cond_3

    move-wide v11, v9

    goto :goto_3

    :cond_3
    move-wide v11, v7

    :goto_3
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 527
    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v6, :cond_4

    move-wide v11, v9

    goto :goto_4

    :cond_4
    move-wide v11, v7

    :goto_4
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 528
    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v6, :cond_5

    move-wide v11, v9

    goto :goto_5

    :cond_5
    move-wide v11, v7

    :goto_5
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 529
    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v6, :cond_6

    move-wide v7, v9

    :cond_6
    iput-wide v7, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 531
    invoke-virtual {v0, v3, v4}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v6

    :goto_6
    if-ltz v6, :cond_14

    .line 533
    iget-object v7, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v11, v7, v6

    .line 534
    iget-wide v7, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v7, v11

    cmp-long v13, v7, v1

    if-gtz v13, :cond_7

    goto/16 :goto_c

    :cond_7
    cmp-long v13, v11, v3

    if-ltz v13, :cond_8

    goto/16 :goto_b

    :cond_8
    cmp-long v13, v11, p5

    if-gez v13, :cond_9

    cmp-long v13, v7, p5

    if-lez v13, :cond_9

    const/4 v13, 0x1

    goto :goto_7

    :cond_9
    const/4 v13, 0x0

    :goto_7
    if-eqz v13, :cond_a

    .line 545
    iget-wide v7, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    goto :goto_a

    :cond_a
    cmp-long v13, v7, v3

    if-gez v13, :cond_b

    goto :goto_8

    :cond_b
    move-wide v7, v3

    :goto_8
    cmp-long v13, v11, v1

    if-lez v13, :cond_c

    goto :goto_9

    :cond_c
    move-wide v11, v1

    :goto_9
    sub-long/2addr v7, v11

    :goto_a
    cmp-long v11, v7, v9

    if-gtz v11, :cond_d

    goto :goto_b

    .line 554
    :cond_d
    iget-object v11, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v11, :cond_e

    iget-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    iget-object v13, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    aget-wide v14, v13, v6

    mul-long/2addr v14, v7

    iget-wide v9, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v14, v9

    add-long/2addr v11, v14

    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 555
    :cond_e
    iget-object v9, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v9, :cond_f

    iget-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-object v11, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v12, v11, v6

    mul-long/2addr v12, v7

    iget-wide v1, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v12, v1

    add-long/2addr v9, v12

    iput-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 556
    :cond_f
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v1, :cond_10

    iget-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iget-object v9, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v10, v9, v6

    mul-long/2addr v10, v7

    iget-wide v12, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v10, v12

    add-long/2addr v1, v10

    iput-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 557
    :cond_10
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v1, :cond_11

    iget-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iget-object v9, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v10, v9, v6

    mul-long/2addr v10, v7

    iget-wide v12, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v10, v12

    add-long/2addr v1, v10

    iput-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 558
    :cond_11
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v1, :cond_12

    iget-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iget-object v9, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v10, v9, v6

    mul-long/2addr v10, v7

    iget-wide v12, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v10, v12

    add-long/2addr v1, v10

    iput-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 559
    :cond_12
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v1, :cond_13

    iget-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iget-object v9, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v10, v9, v6

    mul-long/2addr v10, v7

    iget-wide v7, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v10, v7

    add-long/2addr v1, v10

    iput-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    :cond_13
    :goto_b
    add-int/lit8 v6, v6, -0x1

    move-wide/from16 v1, p1

    const-wide/16 v9, 0x0

    goto/16 :goto_6

    :cond_14
    :goto_c
    return-object v5
.end method

.method public getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 8

    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v7, p5

    .line 513
    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object p0

    return-object p0
.end method

.method public intersects(JJ)Z
    .locals 5

    .line 621
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v0

    .line 622
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    cmp-long p0, p1, v0

    const/4 v4, 0x1

    if-ltz p0, :cond_0

    cmp-long p0, p1, v2

    if-gtz p0, :cond_0

    return v4

    :cond_0
    cmp-long p0, p3, v0

    if-ltz p0, :cond_1

    cmp-long p0, p3, v2

    if-gtz p0, :cond_1

    return v4

    :cond_1
    cmp-long p0, v0, p1

    if-ltz p0, :cond_2

    cmp-long p0, v0, p3

    if-gtz p0, :cond_2

    return v4

    :cond_2
    cmp-long p0, v2, p1

    if-ltz p0, :cond_3

    cmp-long p0, v2, p3

    if-gtz p0, :cond_3

    return v4

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public recordData(JJJJ)V
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 312
    new-instance v15, Landroid/net/NetworkStats$Entry;

    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v0, v15

    move-wide/from16 v5, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    return-void
.end method

.method public recordData(JJLandroid/net/NetworkStats$Entry;)V
    .locals 35

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    .line 321
    iget-wide v6, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 322
    iget-wide v8, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 323
    iget-wide v10, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 324
    iget-wide v12, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 325
    iget-wide v14, v5, Landroid/net/NetworkStats$Entry;->operations:J

    .line 327
    invoke-virtual/range {p5 .. p5}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v16

    if-nez v16, :cond_5

    .line 330
    invoke-virtual/range {p5 .. p5}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_0

    return-void

    .line 335
    :cond_0
    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    sub-long v16, v3, v1

    .line 339
    invoke-virtual {v0, v3, v4}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v18

    move-wide/from16 v33, v6

    move/from16 v6, v18

    move-wide/from16 v18, v14

    move-wide v13, v12

    move-wide v11, v10

    move-wide v9, v8

    move-wide/from16 v7, v33

    :goto_0
    if-ltz v6, :cond_4

    .line 341
    iget-object v15, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    move-wide/from16 v20, v13

    aget-wide v13, v15, v6

    move/from16 v22, v6

    .line 342
    iget-wide v5, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v5, v13

    cmp-long v15, v5, v1

    if-gez v15, :cond_1

    goto/16 :goto_3

    :cond_1
    cmp-long v15, v13, v3

    if-lez v15, :cond_2

    goto :goto_1

    .line 349
    :cond_2
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    sub-long/2addr v5, v13

    const-wide/16 v13, 0x0

    cmp-long v13, v5, v13

    if-gtz v13, :cond_3

    :goto_1
    move-wide/from16 v31, v11

    move-wide/from16 v13, v20

    move/from16 v11, v22

    goto :goto_2

    :cond_3
    mul-long v13, v7, v5

    .line 353
    div-long v13, v13, v16

    mul-long v23, v9, v5

    .line 354
    div-long v1, v23, v16

    mul-long v23, v11, v5

    .line 355
    div-long v3, v23, v16

    mul-long v23, v20, v5

    move-wide/from16 v25, v11

    .line 356
    div-long v11, v23, v16

    mul-long v23, v18, v5

    move-wide/from16 v27, v11

    .line 357
    div-long v11, v23, v16

    .line 359
    iget-object v15, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-wide/from16 v29, v11

    move/from16 v11, v22

    invoke-static {v15, v11, v5, v6}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    .line 360
    iget-object v12, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v12, v11, v13, v14}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long/2addr v7, v13

    .line 361
    iget-object v12, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v12, v11, v1, v2}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long/2addr v9, v1

    .line 362
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1, v11, v3, v4}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v1, v25, v3

    .line 363
    iget-object v3, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-wide/from16 v12, v27

    invoke-static {v3, v11, v12, v13}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v13, v20, v12

    .line 364
    iget-object v3, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-wide/from16 v31, v1

    move-wide/from16 v1, v29

    invoke-static {v3, v11, v1, v2}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v18, v18, v1

    sub-long v16, v16, v5

    :goto_2
    add-int/lit8 v6, v11, -0x1

    move-wide/from16 v11, v31

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    goto/16 :goto_0

    .line 369
    :cond_4
    :goto_3
    iget-wide v1, v0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    move-object/from16 v3, p5

    iget-wide v4, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v4, v6

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-void

    .line 328
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tried recording negative data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public recordEntireHistory(Landroid/net/NetworkStatsHistory;)V
    .locals 6

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    .line 377
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    return-void
.end method

.method public recordHistory(Landroid/net/NetworkStatsHistory;JJ)V
    .locals 18

    move-object/from16 v0, p1

    .line 386
    new-instance v14, Landroid/net/NetworkStats$Entry;

    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    move-object v1, v14

    move-object/from16 v17, v14

    move-wide v14, v15

    invoke-direct/range {v1 .. v15}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    const/4 v1, 0x0

    move v7, v1

    .line 388
    :goto_0
    iget v1, v0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v7, v1, :cond_2

    .line 389
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v1, v7

    .line 390
    iget-wide v4, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v4, v2

    cmp-long v1, v2, p2

    if-ltz v1, :cond_1

    cmp-long v1, v4, p4

    if-lez v1, :cond_0

    goto :goto_1

    .line 395
    :cond_0
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    const-wide/16 v12, 0x0

    invoke-static {v1, v7, v12, v13}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v14

    move-object/from16 v6, v17

    iput-wide v14, v6, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 396
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v1, v7, v12, v13}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v14

    iput-wide v14, v6, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 397
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1, v7, v12, v13}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v14

    iput-wide v14, v6, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 398
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v1, v7, v12, v13}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v14

    iput-wide v14, v6, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 399
    iget-object v1, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v1, v7, v12, v13}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v12

    iput-wide v12, v6, Landroid/net/NetworkStats$Entry;->operations:J

    move-object/from16 v1, p0

    move-object v12, v6

    .line 401
    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto :goto_2

    :cond_1
    :goto_1
    move-object/from16 v12, v17

    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v17, v12

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeBucketsBefore(J)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 484
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v1, :cond_1

    .line 485
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v1, v0

    .line 486
    iget-wide v4, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v0, :cond_8

    .line 494
    iget-object p1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length p1, p1

    .line 495
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {p2, v0, p1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p2

    iput-object p2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 496
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {p2, v0, p1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p2

    iput-object p2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 497
    :cond_2
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {p2, v0, p1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p2

    iput-object p2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 498
    :cond_3
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz p2, :cond_4

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {p2, v0, p1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p2

    iput-object p2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 499
    :cond_4
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz p2, :cond_5

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {p2, v0, p1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p2

    iput-object p2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 500
    :cond_5
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz p2, :cond_6

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {p2, v0, p1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p2

    iput-object p2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 501
    :cond_6
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz p2, :cond_7

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {p2, v0, p1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 502
    :cond_7
    iget p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    :cond_8
    return-void
.end method

.method public setValues(ILandroid/net/NetworkStatsHistory$Entry;)V
    .locals 5

    .line 290
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v3, v2, p1

    sub-long/2addr v0, v3

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 291
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v3, v2, p1

    sub-long/2addr v0, v3

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 293
    :cond_1
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    aput-wide v1, v0, p1

    .line 294
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 295
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 296
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 297
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 298
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 299
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 302
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz p2, :cond_2

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v2, p2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 303
    :cond_2
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz p2, :cond_3

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide p1, p2, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    :cond_3
    return-void
.end method

.method public size()I
    .locals 0

    .line 214
    iget p0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 699
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 700
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 701
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 143
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 145
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 146
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 147
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 148
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 149
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 150
    iget-object p2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, p2, v0}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 151
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 8

    .line 671
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 673
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v0, 0x0

    .line 675
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v1, :cond_0

    const-wide v4, 0x20b00000002L

    .line 676
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 678
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v6, v1, v0

    invoke-virtual {p1, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10300000002L

    .line 679
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {p1, v6, v7, v1, v0}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    const-wide v6, 0x10300000003L

    .line 680
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {p1, v6, v7, v1, v0}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    const-wide v6, 0x10300000004L

    .line 681
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {p1, v6, v7, v1, v0}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    const-wide v6, 0x10300000005L

    .line 682
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {p1, v6, v7, v1, v0}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    const-wide v6, 0x10300000006L

    .line 683
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {p1, v6, v7, v1, v0}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    .line 685
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 688
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 197
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 198
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 199
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 200
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 201
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 202
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 203
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 204
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 205
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget p0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, p0}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    return-void
.end method
