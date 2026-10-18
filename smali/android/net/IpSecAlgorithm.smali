.class public final Landroid/net/IpSecAlgorithm;
.super Ljava/lang/Object;
.source "IpSecAlgorithm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecAlgorithm$AlgorithmName;
    }
.end annotation


# static fields
.field public static final AUTH_CRYPT_AES_GCM:Ljava/lang/String; = "rfc4106(gcm(aes))"

.field public static final AUTH_HMAC_MD5:Ljava/lang/String; = "hmac(md5)"

.field public static final AUTH_HMAC_SHA1:Ljava/lang/String; = "hmac(sha1)"

.field public static final AUTH_HMAC_SHA256:Ljava/lang/String; = "hmac(sha256)"

.field public static final AUTH_HMAC_SHA384:Ljava/lang/String; = "hmac(sha384)"

.field public static final AUTH_HMAC_SHA512:Ljava/lang/String; = "hmac(sha512)"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final CRYPT_AES_CBC:Ljava/lang/String; = "cbc(aes)"

.field public static final CRYPT_NULL:Ljava/lang/String; = "ecb(cipher_null)"

.field private static final TAG:Ljava/lang/String; = "IpSecAlgorithm"


# instance fields
.field private final mKey:[B

.field private final mName:Ljava/lang/String;

.field private final mTruncLenBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 194
    new-instance v0, Landroid/net/IpSecAlgorithm$1;

    invoke-direct {v0}, Landroid/net/IpSecAlgorithm$1;-><init>()V

    sput-object v0, Landroid/net/IpSecAlgorithm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, p2, v0}, Landroid/net/IpSecAlgorithm;-><init>(Ljava/lang/String;[BI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    .line 159
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    .line 160
    iput p3, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    .line 161
    iget-object p1, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    iget-object p2, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x8

    iget p0, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    invoke-static {p1, p2, p0}, Landroid/net/IpSecAlgorithm;->checkValidOrThrow(Ljava/lang/String;II)V

    return-void
.end method

.method private static checkValidOrThrow(Ljava/lang/String;II)V
    .locals 8

    .line 213
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "hmac(sha1)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "hmac(md5)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "hmac(sha512)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "hmac(sha384)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "hmac(sha256)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "cbc(aes)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "rfc4106(gcm(aes))"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/16 v3, 0xc0

    const/16 v4, 0xa0

    const/16 v5, 0x60

    const/16 v6, 0x100

    const/16 v7, 0x80

    packed-switch v0, :pswitch_data_0

    .line 243
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t find an algorithm: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-eq p1, v4, :cond_2

    const/16 p0, 0xe0

    if-eq p1, p0, :cond_2

    const/16 p0, 0x120

    if-ne p1, p0, :cond_1

    goto :goto_2

    :cond_1
    move p0, v1

    goto :goto_3

    :cond_2
    :goto_2
    move p0, v2

    :goto_3
    const/16 v0, 0x40

    if-eq p2, v0, :cond_c

    if-eq p2, v5, :cond_c

    if-ne p2, v7, :cond_3

    goto/16 :goto_b

    :cond_3
    move v2, v1

    goto/16 :goto_b

    :pswitch_1
    const/16 p0, 0x200

    if-ne p1, p0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    if-lt p2, v6, :cond_6

    if-gt p2, p0, :cond_6

    goto :goto_6

    :pswitch_2
    const/16 p0, 0x180

    if-ne p1, p0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    if-lt p2, v3, :cond_6

    if-gt p2, p0, :cond_6

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    move p0, v0

    goto :goto_b

    :pswitch_3
    if-ne p1, v6, :cond_7

    move p0, v2

    goto :goto_7

    :cond_7
    move p0, v1

    :goto_7
    if-lt p2, v5, :cond_3

    if-gt p2, v6, :cond_3

    goto :goto_b

    :pswitch_4
    if-ne p1, v4, :cond_8

    move p0, v2

    goto :goto_8

    :cond_8
    move p0, v1

    :goto_8
    if-lt p2, v5, :cond_3

    if-gt p2, v4, :cond_3

    goto :goto_b

    :pswitch_5
    if-ne p1, v7, :cond_9

    move p0, v2

    goto :goto_9

    :cond_9
    move p0, v1

    :goto_9
    if-lt p2, v5, :cond_3

    if-gt p2, v7, :cond_3

    goto :goto_b

    :pswitch_6
    if-eq p1, v7, :cond_b

    if-eq p1, v3, :cond_b

    if-ne p1, v6, :cond_a

    goto :goto_a

    :cond_a
    move p0, v1

    goto :goto_b

    :cond_b
    :goto_a
    move p0, v2

    :cond_c
    :goto_b
    if-eqz p0, :cond_e

    if-eqz v2, :cond_d

    return-void

    .line 250
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid truncation keyLength: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 247
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid key material keyLength: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x43ce71de -> :sswitch_6
        0x17881bfe -> :sswitch_5
        0x215826a1 -> :sswitch_4
        0x2158a605 -> :sswitch_3
        0x2159743e -> :sswitch_2
        0x2d40230c -> :sswitch_1
        0x7b1b4343 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static equals(Landroid/net/IpSecAlgorithm;Landroid/net/IpSecAlgorithm;)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    iget-object v2, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    iget-object v3, p1, Landroid/net/IpSecAlgorithm;->mKey:[B

    .line 304
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    iget p0, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    iget p1, p1, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    if-ne p0, p1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    :goto_0
    if-ne p0, p1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method private static isUnsafeBuild()Z
    .locals 1

    .line 282
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getKey()[B
    .locals 0

    .line 173
    iget-object p0, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 167
    iget-object p0, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getTruncationLengthBits()I
    .locals 0

    .line 178
    iget p0, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    return p0
.end method

.method public isAead()Z
    .locals 1

    .line 276
    invoke-virtual {p0}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "rfc4106(gcm(aes))"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isAuthentication()Z
    .locals 3

    .line 256
    invoke-virtual {p0}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "hmac(sha1)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "hmac(md5)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "hmac(sha512)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "hmac(sha384)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "hmac(sha256)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x215826a1 -> :sswitch_4
        0x2158a605 -> :sswitch_3
        0x2159743e -> :sswitch_2
        0x2d40230c -> :sswitch_1
        0x7b1b4343 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isEncryption()Z
    .locals 1

    .line 271
    invoke-virtual {p0}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "cbc(aes)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mName="

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mKey="

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-static {}, Landroid/net/IpSecAlgorithm;->isUnsafeBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "<hidden>"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTruncLenBits="

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    .line 294
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 295
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 188
    iget-object p2, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object p2, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 190
    iget p0, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
