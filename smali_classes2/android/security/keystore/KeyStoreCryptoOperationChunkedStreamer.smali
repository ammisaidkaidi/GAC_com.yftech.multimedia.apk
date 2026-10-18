.class Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationChunkedStreamer.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationStreamer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;,
        Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CHUNK_SIZE:I = 0x10000


# instance fields
.field private mBuffered:[B

.field private mBufferedLength:I

.field private mBufferedOffset:I

.field private mConsumedInputSizeBytes:J

.field private final mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

.field private final mMaxChunkSize:I

.field private mProducedOutputSizeBytes:J


# direct methods
.method public constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V
    .locals 1

    const/high16 v0, 0x10000

    .line 82
    invoke-direct {p0, p1, v0}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V

    return-void
.end method

.method public constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 86
    iput-object p1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    .line 87
    iput p2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mMaxChunkSize:I

    return-void
.end method


# virtual methods
.method public doFinal([BII[B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 212
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 p2, 0x0

    .line 217
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->update([BII)[B

    move-result-object p1

    .line 218
    invoke-virtual {p0}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->flush()[B

    move-result-object p2

    invoke-static {p1, p2}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    move-result-object p1

    .line 220
    iget-object p2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    invoke-interface {p2, p4, p5}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->finish([B[B)Landroid/security/keymaster/OperationResult;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 223
    iget p3, p2, Landroid/security/keymaster/OperationResult;->resultCode:I

    const/4 p4, 0x1

    if-ne p3, p4, :cond_1

    .line 226
    iget-wide p3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    iget-object p5, p2, Landroid/security/keymaster/OperationResult;->output:[B

    array-length p5, p5

    int-to-long v0, p5

    add-long/2addr p3, v0

    iput-wide p3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 228
    iget-object p0, p2, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-static {p1, p0}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    move-result-object p0

    return-object p0

    .line 224
    :cond_1
    iget p0, p2, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {p0}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object p0

    throw p0

    .line 222
    :cond_2
    new-instance p0, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {p0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw p0
.end method

.method public flush()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 232
    iget v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    if-gtz v0, :cond_0

    .line 233
    sget-object p0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 239
    :cond_1
    :goto_0
    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    const/4 v2, 0x1

    if-lez v1, :cond_9

    .line 240
    iget-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    iget v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    iget v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    invoke-static {v1, v3, v4}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v1

    .line 241
    iget-object v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    invoke-interface {v3, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->update([B)Landroid/security/keymaster/OperationResult;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 244
    iget v4, v3, Landroid/security/keymaster/OperationResult;->resultCode:I

    if-ne v4, v2, :cond_7

    .line 248
    iget v4, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    if-gtz v4, :cond_2

    goto/16 :goto_2

    .line 253
    :cond_2
    iget v2, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    array-length v4, v1

    if-lt v2, v4, :cond_3

    .line 255
    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    const/4 v2, 0x0

    .line 256
    iput v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    .line 257
    iput v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    goto :goto_1

    .line 260
    :cond_3
    iput-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 261
    iget v2, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    iput v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    .line 262
    array-length v2, v1

    iget v4, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    .line 265
    :goto_1
    iget v2, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    array-length v4, v1

    if-gt v2, v4, :cond_6

    .line 271
    iget-object v1, v3, Landroid/security/keymaster/OperationResult;->output:[B

    if-eqz v1, :cond_1

    iget-object v1, v3, Landroid/security/keymaster/OperationResult;->output:[B

    array-length v1, v1

    if-lez v1, :cond_1

    if-nez v0, :cond_5

    .line 275
    iget v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    if-nez v0, :cond_4

    .line 277
    iget-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    iget-object v2, v3, Landroid/security/keymaster/OperationResult;->output:[B

    array-length v2, v2

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 278
    iget-object p0, v3, Landroid/security/keymaster/OperationResult;->output:[B

    return-object p0

    .line 281
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 286
    :cond_5
    :try_start_0
    iget-object v1, v3, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 288
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Failed to buffer output"

    invoke-direct {v0, v1, p0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 266
    :cond_6
    new-instance p0, Landroid/security/KeyStoreException;

    const/16 v0, -0x3e8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keystore consumed more input than provided. Provided: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", consumed: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 245
    :cond_7
    iget p0, v3, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {p0}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object p0

    throw p0

    .line 243
    :cond_8
    new-instance p0, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {p0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw p0

    .line 293
    :cond_9
    :goto_2
    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    if-lez v1, :cond_b

    .line 294
    new-instance v0, Landroid/security/KeyStoreException;

    const/16 v1, -0x15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keystore failed to consume last "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    if-eq v4, v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_a
    const-string p0, "byte"

    :goto_3
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " of input"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_b
    if-eqz v0, :cond_c

    .line 300
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_4

    :cond_c
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    .line 301
    :goto_4
    iget-wide v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    array-length v3, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    return-object v0
.end method

.method public getConsumedInputSizeBytes()J
    .locals 2

    .line 307
    iget-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    return-wide v0
.end method

.method public getProducedOutputSizeBytes()J
    .locals 2

    .line 312
    iget-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    return-wide v0
.end method

.method public update([BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 94
    sget-object p0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-lez p3, :cond_c

    .line 102
    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    add-int/2addr v1, p3

    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mMaxChunkSize:I

    if-le v1, v2, :cond_2

    .line 105
    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mMaxChunkSize:I

    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    sub-int v7, v1, v2

    .line 106
    iget-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    iget v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    move-object v4, p1

    move v5, p2

    move v6, v7

    invoke-static/range {v1 .. v6}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    move-result-object v1

    move-object v2, v1

    move v1, v7

    goto :goto_1

    .line 110
    :cond_2
    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    if-nez v1, :cond_3

    if-nez p2, :cond_3

    array-length v1, p1

    if-ne p3, v1, :cond_3

    .line 115
    array-length v1, p1

    move-object v2, p1

    goto :goto_1

    .line 119
    :cond_3
    iget-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    iget v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    move-result-object v1

    move-object v2, v1

    move v1, p3

    :goto_1
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 126
    iget-wide v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    .line 128
    iget-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    invoke-interface {v1, v2}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->update([B)Landroid/security/keymaster/OperationResult;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 131
    iget v3, v1, Landroid/security/keymaster/OperationResult;->resultCode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 135
    iget v3, v1, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    array-length v4, v2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_4

    .line 137
    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 138
    iput v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    .line 139
    iput v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    goto :goto_2

    .line 140
    :cond_4
    iget v3, v1, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    const/16 v4, -0x3e8

    if-gtz v3, :cond_6

    if-gtz p3, :cond_5

    .line 150
    iput-object v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 151
    iput v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    .line 152
    array-length v2, v2

    iput v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    goto :goto_2

    .line 146
    :cond_5
    new-instance p0, Landroid/security/KeyStoreException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Keystore consumed nothing from max-sized chunk: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 153
    :cond_6
    iget v3, v1, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    array-length v5, v2

    if-ge v3, v5, :cond_9

    .line 155
    iput-object v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    .line 156
    iget v3, v1, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    iput v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    .line 157
    array-length v2, v2

    iget v3, v1, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    .line 164
    :goto_2
    iget-object v2, v1, Landroid/security/keymaster/OperationResult;->output:[B

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/security/keymaster/OperationResult;->output:[B

    array-length v2, v2

    if-lez v2, :cond_1

    if-lez p3, :cond_7

    if-nez v0, :cond_1

    .line 168
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 170
    :try_start_0
    iget-object v1, v1, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 172
    new-instance p1, Ljava/security/ProviderException;

    const-string p2, "Failed to buffer output"

    invoke-direct {p1, p2, p0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    if-nez v0, :cond_8

    .line 180
    iget-object p1, v1, Landroid/security/keymaster/OperationResult;->output:[B

    goto :goto_3

    .line 184
    :cond_8
    :try_start_1
    iget-object p1, v1, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 190
    :goto_3
    iget-wide p2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    array-length v0, p1

    int-to-long v0, v0

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    return-object p1

    :catch_1
    move-exception p0

    .line 186
    new-instance p1, Ljava/security/ProviderException;

    const-string p2, "Failed to buffer output"

    invoke-direct {p1, p2, p0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 159
    :cond_9
    new-instance p0, Landroid/security/KeyStoreException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Keystore consumed more input than provided. Provided: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", consumed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 132
    :cond_a
    iget p0, v1, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {p0}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object p0

    throw p0

    .line 130
    :cond_b
    new-instance p0, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {p0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw p0

    :cond_c
    if-nez v0, :cond_d

    .line 199
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    goto :goto_4

    .line 201
    :cond_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 203
    :goto_4
    iget-wide p2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    array-length v0, p1

    int-to-long v0, v0

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    return-object p1
.end method
