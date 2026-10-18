.class public final Landroid/nfc/tech/MifareClassic;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "MifareClassic.java"


# static fields
.field public static final BLOCK_SIZE:I = 0x10

.field public static final KEY_DEFAULT:[B

.field public static final KEY_MIFARE_APPLICATION_DIRECTORY:[B

.field public static final KEY_NFC_FORUM:[B

.field private static final MAX_BLOCK_COUNT:I = 0x100

.field private static final MAX_SECTOR_COUNT:I = 0x28

.field public static final SIZE_1K:I = 0x400

.field public static final SIZE_2K:I = 0x800

.field public static final SIZE_4K:I = 0x1000

.field public static final SIZE_MINI:I = 0x140

.field private static final TAG:Ljava/lang/String; = "NFC"

.field public static final TYPE_CLASSIC:I = 0x0

.field public static final TYPE_PLUS:I = 0x1

.field public static final TYPE_PRO:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private mIsEmulated:Z

.field private mSize:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    .line 79
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    .line 85
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Landroid/nfc/tech/MifareClassic;->KEY_MIFARE_APPLICATION_DIRECTORY:[B

    .line 91
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/nfc/tech/MifareClassic;->KEY_NFC_FORUM:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x60t
        -0x5ft
        -0x5et
        -0x5dt
        -0x5ct
        -0x5bt
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x2dt
        -0x9t
        -0x2dt
        -0x9t
        -0x2dt
        -0x9t
    .end array-data
.end method

.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 146
    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 148
    invoke-static {p1}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object p1

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    .line 152
    invoke-virtual {p1}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v1

    const/16 v2, 0x400

    const/16 v3, 0x1000

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 199
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag incorrectly enumerated as MIFARE Classic, SAK = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p1}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_0
    const/4 p1, 0x2

    .line 193
    iput p1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 194
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_0

    .line 187
    :sswitch_1
    iput v0, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 188
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_0

    .line 182
    :sswitch_2
    iput v0, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 183
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 184
    iput-boolean v4, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    goto :goto_0

    .line 177
    :sswitch_3
    iput v0, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 178
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    .line 179
    iput-boolean v4, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    goto :goto_0

    .line 173
    :sswitch_4
    iput v0, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 174
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_0

    .line 168
    :sswitch_5
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 169
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_0

    .line 163
    :sswitch_6
    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    const/16 p1, 0x800

    .line 164
    iput p1, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_0

    .line 159
    :sswitch_7
    iput v0, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    const/16 p1, 0x140

    .line 160
    iput p1, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_0

    .line 155
    :sswitch_8
    iput v0, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    .line 156
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x8 -> :sswitch_8
        0x9 -> :sswitch_7
        0x10 -> :sswitch_6
        0x11 -> :sswitch_5
        0x18 -> :sswitch_4
        0x28 -> :sswitch_3
        0x38 -> :sswitch_2
        0x88 -> :sswitch_1
        0x98 -> :sswitch_0
        0xb8 -> :sswitch_0
    .end sparse-switch
.end method

.method private authenticate(I[BZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateSector(I)V

    .line 371
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/16 v0, 0xc

    .line 373
    new-array v0, v0, [B

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/16 p3, 0x60

    aput-byte p3, v0, v1

    goto :goto_0

    :cond_0
    const/16 p3, 0x61

    aput-byte p3, v0, v1

    .line 385
    :goto_0
    invoke-virtual {p0, p1}, Landroid/nfc/tech/MifareClassic;->sectorToBlock(I)I

    move-result p1

    int-to-byte p1, p1

    const/4 p3, 0x1

    aput-byte p1, v0, p3

    .line 388
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->getTag()Landroid/nfc/Tag;

    move-result-object p1

    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    move-result-object p1

    .line 389
    array-length v2, p1

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    const/4 v4, 0x2

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 p1, 0x6

    .line 392
    invoke-static {p2, v1, v0, p1, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 395
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    move-result-object p0
    :try_end_0
    .catch Landroid/nfc/TagLostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return p3

    :catch_0
    :cond_1
    return v1

    :catch_1
    move-exception p0

    .line 399
    throw p0
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareClassic;
    .locals 2

    const/16 v0, 0x8

    .line 136
    invoke-virtual {p0, v0}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 138
    :cond_0
    :try_start_0
    new-instance v0, Landroid/nfc/tech/MifareClassic;

    invoke-direct {v0, p0}, Landroid/nfc/tech/MifareClassic;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method private static validateBlock(I)V
    .locals 3

    if-ltz p0, :cond_0

    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    return-void

    .line 644
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "block out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateSector(I)V
    .locals 3

    if-ltz p0, :cond_0

    const/16 v0, 0x28

    if-ge p0, v0, :cond_0

    return-void

    .line 637
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sector out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateValueOperand(I)V
    .locals 1

    if-ltz p0, :cond_0

    return-void

    .line 650
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "value operand negative"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public authenticateSectorWithKeyA(I[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 339
    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    move-result p0

    return p0
.end method

.method public authenticateSectorWithKeyB(I[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 366
    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    move-result p0

    return p0
.end method

.method public blockToSector(I)I
    .locals 0

    .line 291
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    const/16 p0, 0x80

    if-ge p1, p0, :cond_0

    .line 294
    div-int/lit8 p1, p1, 0x4

    return p1

    :cond_0
    sub-int/2addr p1, p0

    .line 296
    div-int/lit8 p1, p1, 0x10

    add-int/lit8 p1, p1, 0x20

    return p1
.end method

.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public decrement(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 501
    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    .line 502
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v0, 0x6

    .line 504
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 505
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, -0x40

    .line 506
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    .line 507
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 508
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 510
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void
.end method

.method public getBlockCount()I
    .locals 0

    .line 263
    iget p0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    div-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public getBlockCountInSector(I)I
    .locals 0

    .line 274
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateSector(I)V

    const/16 p0, 0x20

    if-ge p1, p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/16 p0, 0x10

    return p0
.end method

.method public getMaxTransceiveLength()I
    .locals 0

    .line 584
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->getMaxTransceiveLengthInternal()I

    move-result p0

    return p0
.end method

.method public getSectorCount()I
    .locals 1

    .line 243
    iget p0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    const/16 v0, 0x140

    if-eq p0, v0, :cond_3

    const/16 v0, 0x400

    if-eq p0, v0, :cond_2

    const/16 v0, 0x800

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1000

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x28

    return p0

    :cond_1
    const/16 p0, 0x20

    return p0

    :cond_2
    const/16 p0, 0x10

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public getSize()I
    .locals 0

    .line 224
    iget p0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    return p0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 0

    .line 73
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object p0

    return-object p0
.end method

.method public getTimeout()I
    .locals 2

    .line 621
    :try_start_0
    iget-object p0, p0, Landroid/nfc/tech/MifareClassic;->mTag:Landroid/nfc/Tag;

    invoke-virtual {p0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object p0

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/nfc/INfcTag;->getTimeout(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "NFC"

    const-string v1, "NFC service dead"

    .line 623
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getType()I
    .locals 0

    .line 213
    iget p0, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    return p0
.end method

.method public increment(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 473
    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    .line 474
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v0, 0x6

    .line 476
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 477
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, -0x3f

    .line 478
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    .line 479
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 480
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 482
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void
.end method

.method public bridge synthetic isConnected()Z
    .locals 0

    .line 73
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result p0

    return p0
.end method

.method public isEmulated()Z
    .locals 0

    .line 234
    iget-boolean p0, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    return p0
.end method

.method public readBlock(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 422
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v0, 0x2

    .line 424
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v2, 0x1

    aput-byte p1, v0, v2

    .line 425
    invoke-virtual {p0, v0, v1}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic reconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public restore(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 550
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v0, 0x2

    .line 552
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v2, 0x1

    aput-byte p1, v0, v2

    .line 554
    invoke-virtual {p0, v0, v1}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void
.end method

.method public sectorToBlock(I)I
    .locals 0

    const/16 p0, 0x20

    if-ge p1, p0, :cond_0

    mul-int/lit8 p1, p1, 0x4

    return p1

    :cond_0
    sub-int/2addr p1, p0

    mul-int/lit8 p1, p1, 0x10

    add-int/lit16 p1, p1, 0x80

    return p1
.end method

.method public setTimeout(I)V
    .locals 1

    .line 603
    :try_start_0
    iget-object p0, p0, Landroid/nfc/tech/MifareClassic;->mTag:Landroid/nfc/Tag;

    invoke-virtual {p0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object p0

    const/16 v0, 0x8

    invoke-interface {p0, v0, p1}, Landroid/nfc/INfcTag;->setTimeout(II)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 605
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The supplied timeout is not valid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "NFC"

    const-string v0, "NFC service dead"

    .line 608
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public transceive([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 576
    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public transfer(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 528
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v0, 0x2

    .line 530
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v2, 0x1

    aput-byte p1, v0, v2

    .line 532
    invoke-virtual {p0, v0, v1}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void
.end method

.method public writeBlock(I[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    .line 444
    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    .line 445
    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 449
    array-length v0, p2

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/16 v2, -0x60

    const/4 v3, 0x0

    .line 450
    aput-byte v2, v0, v3

    const/4 v2, 0x1

    int-to-byte p1, p1

    .line 451
    aput-byte p1, v0, v2

    .line 452
    array-length p1, p2

    invoke-static {p2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 454
    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void

    .line 446
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "must write 16-bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
