.class public Lcom/android/internal/telephony/uicc/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field private static final HEX_CHARS:[C

.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 36
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .locals 7

    if-nez p2, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_2

    .line 264
    aget-byte v2, p0, p1

    const/16 v3, -0x80

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, p2, -0x1

    .line 265
    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    .line 269
    :try_start_0
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, p1, 0x1

    mul-int/lit8 v2, v2, 0x2

    const-string/jumbo v6, "utf-16be"

    invoke-direct {v4, p0, v5, v2, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    .line 271
    invoke-static {v4, v5, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v3, :cond_2

    .line 278
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    :goto_1
    if-lez p0, :cond_1

    add-int/lit8 p1, p0, -0x1

    .line 279
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const p2, 0xffff

    if-ne p1, p2, :cond_1

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .line 282
    :cond_1
    invoke-virtual {v3, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v2, 0x3

    if-lt p2, v2, :cond_4

    .line 291
    aget-byte v2, p0, p1

    const/16 v3, -0x7f

    if-ne v2, v3, :cond_4

    add-int/lit8 v2, p1, 0x1

    .line 292
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, -0x3

    if-le v2, v3, :cond_3

    move v2, v3

    :cond_3
    add-int/lit8 v3, p1, 0x2

    .line 296
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    int-to-char v3, v3

    add-int/lit8 p1, p1, 0x3

    goto :goto_2

    :cond_4
    const/4 v2, 0x4

    if-lt p2, v2, :cond_6

    .line 299
    aget-byte v2, p0, p1

    const/16 v3, -0x7e

    if-ne v2, v3, :cond_6

    add-int/lit8 v2, p1, 0x1

    .line 300
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, -0x4

    if-le v2, v3, :cond_5

    move v2, v3

    :cond_5
    add-int/lit8 v3, p1, 0x2

    .line 304
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    add-int/lit8 p1, p1, 0x4

    goto :goto_2

    :cond_6
    move v1, v0

    move v2, v1

    move v3, v2

    :goto_2
    if-eqz v1, :cond_a

    .line 311
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    if-lez v2, :cond_9

    .line 316
    aget-byte v1, p0, p1

    if-gez v1, :cond_7

    .line 317
    aget-byte v1, p0, p1

    and-int/lit8 v1, v1, 0x7f

    add-int/2addr v1, v3

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_7
    move v1, v0

    :goto_4
    if-ge v1, v2, :cond_8

    add-int v4, p1, v1

    .line 325
    aget-byte v4, p0, v4

    if-ltz v4, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 328
    :cond_8
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v1

    sub-int/2addr v2, v1

    goto :goto_3

    .line 335
    :cond_9
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 338
    :cond_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, ""

    const v2, 0x1040264

    .line 342
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-object v0, v1

    .line 346
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bcdPlmnToString([BI)Ljava/lang/String;
    .locals 5

    add-int/lit8 v0, p1, 0x3

    .line 111
    array-length v1, p0

    if-le v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    .line 114
    new-array v0, v0, [B

    add-int/lit8 v1, p1, 0x0

    .line 115
    aget-byte v2, p0, v1

    shl-int/lit8 v2, v2, 0x4

    aget-byte v1, p0, v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    add-int/lit8 v1, p1, 0x1

    .line 116
    aget-byte v2, p0, v1

    shl-int/lit8 v2, v2, 0x4

    const/4 v3, 0x2

    add-int/2addr p1, v3

    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v0, v4

    .line 117
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xf0

    aget-byte p0, p0, v1

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0xf

    or-int/2addr p0, p1

    int-to-byte p0, p0

    aput-byte p0, v0, v3

    .line 118
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    const-string p1, "f"

    .line 121
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "f"

    const-string v0, ""

    .line 122
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static bcdToBytes(Ljava/lang/String;[B)V
    .locals 5

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 99
    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_1

    .line 101
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static bcdToBytes(Ljava/lang/String;)[B
    .locals 1

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 84
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static bcdToString([B)Ljava/lang/String;
    .locals 2

    .line 74
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .locals 5

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_3

    .line 56
    aget-byte v2, p0, v1

    const/16 v3, 0xf

    and-int/2addr v2, v3

    const/16 v4, 0x9

    if-le v2, v4, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    if-le v2, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bchToString([BII)Ljava/lang/String;
    .locals 4

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    .line 137
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    .line 138
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 141
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static bitToRGB(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/high16 p0, -0x1000000

    return p0
.end method

.method private static byteNumForInt(IZ)I
    .locals 3

    if-ltz p0, :cond_6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    const/16 p1, 0x7f

    if-gt p0, p1, :cond_0

    return v2

    :cond_0
    const/16 p1, 0x7fff

    if-gt p0, p1, :cond_1

    return v1

    :cond_1
    const p1, 0x7fffff

    if-gt p0, p1, :cond_5

    return v0

    :cond_2
    const/16 p1, 0xff

    if-gt p0, p1, :cond_3

    return v2

    :cond_3
    const p1, 0xffff

    if-gt p0, p1, :cond_4

    return v1

    :cond_4
    const p1, 0xffffff

    if-gt p0, p1, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x4

    return p0

    .line 784
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "value must be 0 or positive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static byteNumForSignedInt(I)I
    .locals 1

    const/4 v0, 0x1

    .line 767
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result p0

    return p0
.end method

.method public static byteNumForUnsignedInt(I)I
    .locals 1

    const/4 v0, 0x0

    .line 755
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result p0

    return p0
.end method

.method public static byteToHex(B)Ljava/lang/String;
    .locals 4

    .line 836
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [C

    sget-object v2, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    and-int/lit16 v3, p0, 0xff

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    const/4 v3, 0x0

    aput-char v2, v1, v3

    sget-object v2, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    and-int/lit8 p0, p0, 0xf

    aget-char p0, v2, p0

    const/4 v2, 0x1

    aput-char p0, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 398
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 400
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 403
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 405
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    .line 409
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bytesToInt([BII)I
    .locals 3

    const/4 v0, 0x4

    if-gt p2, v0, :cond_3

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    add-int v0, p1, p2

    .line 637
    array-length v1, p0

    if-gt v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_0

    shl-int/lit8 v1, v1, 0x8

    add-int v2, p1, v0

    .line 648
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ltz v1, :cond_1

    return v1

    .line 651
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "src cannot be parsed as a positive integer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 638
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of the bounds: src=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], offset="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", length="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "length must be <= 4 (only 32-bit integer supported): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bytesToRawLong([BII)J
    .locals 6

    const/16 v0, 0x8

    if-gt p2, v0, :cond_2

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    add-int v1, p1, p2

    .line 674
    array-length v2, p0

    if-gt v1, v2, :cond_1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_0

    shl-long/2addr v1, v0

    add-int v4, p1, v3

    .line 685
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1

    .line 675
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of the bounds: src=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], offset="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", length="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "length must be <= 8 (only 64-bit long supported): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cdmaBcdByteToInt(B)I
    .locals 2

    and-int/lit16 v0, p0, 0xf0

    const/16 v1, 0x90

    if-gt v0, v1, :cond_0

    shr-int/lit8 v0, p0, 0x4

    and-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 p0, p0, 0xf

    const/16 v1, 0x9

    if-gt p0, v1, :cond_1

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public static cdmaBcdToString([BII)Ljava/lang/String;
    .locals 5

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v2, p1

    move p1, v1

    :goto_0
    if-ge p1, p2, :cond_3

    .line 157
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0x9

    if-le v3, v4, :cond_0

    move v3, v1

    :cond_0
    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_1

    .line 163
    :cond_1
    aget-byte v3, p0, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    if-le v3, v4, :cond_2

    move v3, v1

    :cond_2
    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 165
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static charToByte(C)B
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    int-to-byte p0, p0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x37

    int-to-byte p0, p0

    return p0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x57

    int-to-byte p0, p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static countTrailingZeros(B)B
    .locals 2

    if-nez p0, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    and-int/lit16 p0, p0, 0xff

    const/4 v0, 0x7

    and-int/lit8 v1, p0, 0xf

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    int-to-byte v0, v0

    :cond_1
    and-int/lit8 v1, p0, 0x33

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    :cond_2
    and-int/lit8 p0, p0, 0x55

    if-eqz p0, :cond_3

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    :cond_3
    return v0
.end method

.method private static getCLUT([BII)[I
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 597
    :cond_0
    new-array v0, p2, [I

    mul-int/lit8 p2, p2, 0x3

    add-int/2addr p2, p1

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    :goto_0
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, p1, 0x1

    .line 603
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v2

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr p1, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr p1, v5

    aput p1, v0, v1

    if-lt v4, p2, :cond_1

    return-object v0

    :cond_1
    move v1, v3

    move p1, v4

    goto :goto_0
.end method

.method public static getDecimalSubstring(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 613
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 614
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 616
    :cond_1
    :goto_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static gsmBcdByteToInt(B)I
    .locals 2

    and-int/lit16 v0, p0, 0xf0

    const/16 v1, 0x90

    if-gt v0, v1, :cond_0

    shr-int/lit8 v0, p0, 0x4

    and-int/lit8 v0, v0, 0xf

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 p0, p0, 0xf

    const/16 v1, 0x9

    if-gt p0, v1, :cond_1

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public static hexCharToInt(C)I
    .locals 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v1, 0x46

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v1, 0x66

    if-gt p0, v1, :cond_2

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 355
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 374
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 376
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 379
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    .line 380
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static intToBytes(I[BIZ)I
    .locals 3

    .line 771
    invoke-static {p0, p3}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result p3

    if-ltz p2, :cond_1

    add-int v0, p2, p3

    .line 772
    array-length v1, p1

    if-gt v0, v1, :cond_1

    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-ltz v0, :cond_0

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    add-int v2, p2, v0

    .line 777
    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, -0x1

    ushr-int/lit8 p0, p0, 0x8

    goto :goto_0

    :cond_0
    return p3

    .line 773
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not enough space to write. Required bytes: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .locals 10

    const/16 v0, 0x8

    .line 543
    rem-int v1, v0, p4

    if-eqz v1, :cond_0

    const-string v0, "IccUtils"

    const-string v1, "not event number of color"

    .line 544
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq p4, v1, :cond_2

    if-eq p4, v0, :cond_1

    packed-switch p4, :pswitch_data_0

    :pswitch_0
    move v1, v2

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/16 v1, 0xff

    goto :goto_0

    :cond_2
    const/16 v1, 0xf

    .line 565
    :goto_0
    new-array v3, p2, [I

    .line 567
    div-int/2addr v0, p4

    const/4 v4, 0x0

    move v5, p1

    move p1, v4

    :goto_1
    if-ge p1, p2, :cond_4

    add-int/lit8 v6, v5, 0x1

    .line 569
    aget-byte v5, p0, v5

    move v7, p1

    move p1, v4

    :goto_2
    if-ge p1, v0, :cond_3

    sub-int v8, v0, p1

    sub-int/2addr v8, v2

    add-int/lit8 v9, v7, 0x1

    mul-int/2addr v8, p4

    shr-int v8, v5, v8

    and-int/2addr v8, v1

    .line 572
    aget v8, p3, v8

    aput v8, v3, v7

    add-int/lit8 p1, p1, 0x1

    move v7, v9

    goto :goto_2

    :cond_3
    move v5, v6

    move p1, v7

    goto :goto_1

    :cond_4
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .locals 2

    const/16 v0, 0x8

    .line 581
    rem-int/2addr v0, p4

    if-nez v0, :cond_0

    const-string v0, "IccUtils"

    const-string v1, "not odd number of color"

    .line 582
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object p0

    return-object p0

    .line 587
    :cond_0
    new-array p0, p2, [I

    return-object p0
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .locals 3

    .line 425
    aget-byte v0, p0, p1

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    goto :goto_1

    .line 429
    :cond_0
    aget-byte v1, p0, p1

    ushr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x7

    packed-switch v1, :pswitch_data_0

    const-string v1, ""

    goto :goto_0

    .line 440
    :pswitch_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr p2, v0

    const-string/jumbo v0, "utf-16"

    invoke-direct {v1, p0, v2, p2, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v1, ""

    const-string v0, "IccUtils"

    const-string v2, "implausible UnsupportedEncodingException"

    .line 444
    invoke-static {v0, v2, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 433
    :pswitch_1
    aget-byte v1, p0, p1

    and-int/lit8 v1, v1, 0x7

    sub-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x8

    sub-int/2addr p2, v1

    .line 434
    div-int/lit8 p2, p2, 0x7

    add-int/lit8 v0, p1, 0x1

    .line 435
    invoke-static {p0, v0, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 458
    :goto_0
    aget-byte p0, p0, p1

    return-object v1

    :cond_1
    :goto_1
    const-string p0, ""

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 12

    const/4 p1, 0x0

    .line 473
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    .line 474
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int v3, v0, v2

    .line 477
    new-array v4, v3, [I

    const/4 v5, 0x7

    const/4 v6, 0x2

    move v7, p1

    move v8, v5

    :goto_0
    if-ge p1, v3, :cond_1

    .line 484
    rem-int/lit8 v9, p1, 0x8

    if-nez v9, :cond_0

    add-int/lit8 v7, v6, 0x1

    .line 485
    aget-byte v6, p0, v6

    move v8, v5

    move v11, v7

    move v7, v6

    move v6, v11

    :cond_0
    add-int/lit8 v9, p1, 0x1

    add-int/lit8 v10, v8, -0x1

    shr-int v8, v7, v8

    and-int/2addr v8, v1

    .line 488
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bitToRGB(I)I

    move-result v8

    aput v8, v4, p1

    move p1, v9

    move v8, v10

    goto :goto_0

    :cond_1
    if-eq p1, v3, :cond_2

    const-string p0, "IccUtils"

    const-string p1, "parse end and size error"

    .line 492
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v2, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 8

    const/4 p1, 0x0

    .line 516
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    .line 517
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x2

    .line 518
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x3

    .line 519
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x4

    .line 520
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const/4 v7, 0x5

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    .line 523
    invoke-static {p0, v5, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->getCLUT([BII)[I

    move-result-object v5

    if-ne v1, p2, :cond_0

    sub-int/2addr v4, v1

    .line 525
    aput p1, v5, v4

    .line 529
    :cond_0
    rem-int/2addr v6, v3

    const/4 p1, 0x6

    if-nez v6, :cond_1

    mul-int p2, v0, v2

    .line 530
    invoke-static {p0, p1, p2, v5, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object p0

    goto :goto_0

    :cond_1
    mul-int p2, v0, v2

    .line 533
    invoke-static {p0, p1, p2, v5, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object p0

    .line 537
    :goto_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v2, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static signedIntToBytes(I[BI)I
    .locals 1

    const/4 v0, 0x1

    .line 745
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->intToBytes(I[BIZ)I

    move-result p0

    return p0
.end method

.method public static signedIntToBytes(I)[B
    .locals 3

    if-ltz p0, :cond_0

    .line 716
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForSignedInt(I)I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 717
    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->signedIntToBytes(I[BI)I

    return-object v0

    .line 714
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value must be 0 or positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "(?i)f*$"

    const-string v1, ""

    .line 843
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static unsignedIntToBytes(I[BI)I
    .locals 1

    const/4 v0, 0x0

    .line 732
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->intToBytes(I[BIZ)I

    move-result p0

    return p0
.end method

.method public static unsignedIntToBytes(I)[B
    .locals 3

    if-ltz p0, :cond_0

    .line 699
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForUnsignedInt(I)I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 700
    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I[BI)I

    return-object v0

    .line 697
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value must be 0 or positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
