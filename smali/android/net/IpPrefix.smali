.class public final Landroid/net/IpPrefix;
.super Ljava/lang/Object;
.source "IpPrefix.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final address:[B

.field private final prefixLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 282
    new-instance v0, Landroid/net/IpPrefix$2;

    invoke-direct {v0}, Landroid/net/IpPrefix$2;-><init>()V

    sput-object v0, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {p1}, Landroid/net/NetworkUtils;->parseIpAndMask(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 109
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpPrefix;->address:[B

    .line 110
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/net/IpPrefix;->prefixLength:I

    .line 111
    invoke-direct {p0}, Landroid/net/IpPrefix;->checkAndMaskAddressAndPrefixLength()V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    iput-object p1, p0, Landroid/net/IpPrefix;->address:[B

    .line 90
    iput p2, p0, Landroid/net/IpPrefix;->prefixLength:I

    .line 91
    invoke-direct {p0}, Landroid/net/IpPrefix;->checkAndMaskAddressAndPrefixLength()V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/net/IpPrefix;->address:[B

    .line 73
    iput p2, p0, Landroid/net/IpPrefix;->prefixLength:I

    .line 74
    invoke-direct {p0}, Landroid/net/IpPrefix;->checkAndMaskAddressAndPrefixLength()V

    return-void
.end method

.method static synthetic access$000(Landroid/net/IpPrefix;)[B
    .locals 0

    .line 49
    iget-object p0, p0, Landroid/net/IpPrefix;->address:[B

    return-object p0
.end method

.method private checkAndMaskAddressAndPrefixLength()V
    .locals 3

    .line 54
    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpPrefix has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/IpPrefix;->address:[B

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes which is neither 4 nor 16"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    iget p0, p0, Landroid/net/IpPrefix;->prefixLength:I

    invoke-static {v0, p0}, Landroid/net/NetworkUtils;->maskRawAddress([BI)V

    return-void
.end method

.method public static lengthComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .line 253
    new-instance v0, Landroid/net/IpPrefix$1;

    invoke-direct {v0}, Landroid/net/IpPrefix$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/net/InetAddress;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 183
    array-length v0, p1

    iget-object v1, p0, Landroid/net/IpPrefix;->address:[B

    array-length v1, v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 186
    :cond_1
    iget v0, p0, Landroid/net/IpPrefix;->prefixLength:I

    invoke-static {p1, v0}, Landroid/net/NetworkUtils;->maskRawAddress([BI)V

    .line 187
    iget-object p0, p0, Landroid/net/IpPrefix;->address:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public containsPrefix(Landroid/net/IpPrefix;)Z
    .locals 2

    .line 198
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    iget v1, p0, Landroid/net/IpPrefix;->prefixLength:I

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object p1

    .line 200
    iget v0, p0, Landroid/net/IpPrefix;->prefixLength:I

    invoke-static {p1, v0}, Landroid/net/NetworkUtils;->maskRawAddress([BI)V

    .line 201
    iget-object p0, p0, Landroid/net/IpPrefix;->address:[B

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 123
    instance-of v0, p1, Landroid/net/IpPrefix;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 126
    :cond_0
    check-cast p1, Landroid/net/IpPrefix;

    .line 127
    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    iget-object v2, p1, Landroid/net/IpPrefix;->address:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Landroid/net/IpPrefix;->prefixLength:I

    iget p1, p1, Landroid/net/IpPrefix;->prefixLength:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 0

    .line 148
    :try_start_0
    iget-object p0, p0, Landroid/net/IpPrefix;->address:[B

    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrefixLength()I
    .locals 0

    .line 172
    iget p0, p0, Landroid/net/IpPrefix;->prefixLength:I

    return p0
.end method

.method public getRawAddress()[B
    .locals 0

    .line 163
    iget-object p0, p0, Landroid/net/IpPrefix;->address:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 137
    iget-object v0, p0, Landroid/net/IpPrefix;->address:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iget p0, p0, Landroid/net/IpPrefix;->prefixLength:I

    mul-int/lit8 p0, p0, 0xb

    add-int/2addr v0, p0

    return v0
.end method

.method public isIPv4()Z
    .locals 0

    .line 215
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    instance-of p0, p0, Ljava/net/Inet4Address;

    return p0
.end method

.method public isIPv6()Z
    .locals 0

    .line 208
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    instance-of p0, p0, Ljava/net/Inet6Address;

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 225
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/IpPrefix;->address:[B

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/IpPrefix;->prefixLength:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IpPrefix with invalid address! Shouldn\'t happen."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 243
    iget-object p2, p0, Landroid/net/IpPrefix;->address:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 244
    iget p0, p0, Landroid/net/IpPrefix;->prefixLength:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
