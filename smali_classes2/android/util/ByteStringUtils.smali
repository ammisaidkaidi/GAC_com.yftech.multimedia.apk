.class public final Landroid/util/ByteStringUtils;
.super Ljava/lang/Object;
.source "ByteStringUtils.java"


# static fields
.field private static final HEX_LOWERCASE_ARRAY:[C

.field private static final HEX_UPPERCASE_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/util/ByteStringUtils;->HEX_LOWERCASE_ARRAY:[C

    const-string v0, "0123456789ABCDEF"

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/util/ByteStringUtils;->HEX_UPPERCASE_ARRAY:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromHexToByteArray(Ljava/lang/String;)[B
    .locals 4

    if-eqz p0, :cond_2

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 65
    array-length v0, p0

    .line 66
    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 68
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    .line 69
    aget-char v3, p0, v2

    .line 70
    invoke-static {v3}, Landroid/util/ByteStringUtils;->getIndex(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xf0

    add-int/lit8 v2, v2, 0x1

    aget-char v2, p0, v2

    .line 71
    invoke-static {v2}, Landroid/util/ByteStringUtils;->getIndex(C)I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getIndex(C)I
    .locals 2

    const/4 v0, 0x0

    .line 77
    :goto_0
    sget-object v1, Landroid/util/ByteStringUtils;->HEX_UPPERCASE_ARRAY:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 78
    sget-object v1, Landroid/util/ByteStringUtils;->HEX_UPPERCASE_ARRAY:[C

    aget-char v1, v1, v0

    if-eq v1, p0, :cond_1

    sget-object v1, Landroid/util/ByteStringUtils;->HEX_LOWERCASE_ARRAY:[C

    aget-char v1, v1, v0

    if-ne v1, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_2

    .line 38
    array-length v0, p0

    if-eqz v0, :cond_2

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 44
    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 47
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x2

    .line 48
    sget-object v5, Landroid/util/ByteStringUtils;->HEX_UPPERCASE_ARRAY:[C

    ushr-int/lit8 v6, v3, 0x4

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    .line 49
    sget-object v5, Landroid/util/ByteStringUtils;->HEX_UPPERCASE_ARRAY:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    aput-char v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
