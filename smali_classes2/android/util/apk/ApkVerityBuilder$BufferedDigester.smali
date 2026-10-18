.class Landroid/util/apk/ApkVerityBuilder$BufferedDigester;
.super Ljava/lang/Object;
.source "ApkVerityBuilder.java"

# interfaces
.implements Landroid/util/apk/DataDigester;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkVerityBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferedDigester"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# instance fields
.field private mBytesDigestedSinceReset:I

.field private final mDigestBuffer:[B

.field private final mMd:Ljava/security/MessageDigest;

.field private final mOutput:Ljava/nio/ByteBuffer;

.field private final mSalt:[B


# direct methods
.method private constructor <init>([BLjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 180
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mDigestBuffer:[B

    .line 184
    iput-object p1, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mSalt:[B

    .line 185
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    const-string p1, "SHA-256"

    .line 186
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    .line 187
    iget-object p1, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    iget-object p2, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mSalt:[B

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    const/4 p1, 0x0

    .line 188
    iput p1, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    return-void
.end method

.method synthetic constructor <init>([BLjava/nio/ByteBuffer;Landroid/util/apk/ApkVerityBuilder$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$100(Landroid/util/apk/ApkVerityBuilder$BufferedDigester;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->fillUpLastOutputChunk()V

    return-void
.end method

.method private fillUpLastOutputChunk()V
    .locals 1

    .line 227
    iget-object v0, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    rem-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    iget-object p0, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    rsub-int v0, v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public assertEmptyBuffer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 221
    iget v0, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer is not empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public consume(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 199
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 200
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 202
    iget v1, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    const/16 v2, 0x1000

    rsub-int v1, v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 204
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 205
    iget-object v3, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    sub-int/2addr v0, v1

    .line 208
    iget v3, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    .line 210
    iget v1, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    if-ne v1, v2, :cond_0

    .line 211
    iget-object v1, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    iget-object v2, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mDigestBuffer:[B

    iget-object v3, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mDigestBuffer:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/security/MessageDigest;->digest([BII)I

    .line 212
    iget-object v1, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mDigestBuffer:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 214
    iget-object v1, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    iget-object v2, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mSalt:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 215
    iput v4, p0, Landroid/util/apk/ApkVerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    goto :goto_0

    :cond_1
    return-void
.end method
