.class public Landroid/net/LinkAddress;
.super Ljava/lang/Object;
.source "LinkAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/net/InetAddress;

.field private flags:I

.field private prefixLength:I

.field private scope:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 336
    new-instance v0, Landroid/net/LinkAddress$1;

    invoke-direct {v0}, Landroid/net/LinkAddress$1;-><init>()V

    sput-object v0, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, v0, v0}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V

    .line 190
    iget-object p1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-static {p1}, Landroid/net/LinkAddress;->scopeForUnicastAddress(Ljava/net/InetAddress;)I

    move-result p1

    iput p1, p0, Landroid/net/LinkAddress;->scope:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-static {p1}, Landroid/net/NetworkUtils;->parseIpAndMask(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 205
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;III)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;III)V

    .line 168
    invoke-static {p1}, Landroid/net/LinkAddress;->scopeForUnicastAddress(Ljava/net/InetAddress;)I

    move-result p1

    iput p1, p0, Landroid/net/LinkAddress;->scope:I

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;III)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;III)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InterfaceAddress;)V
    .locals 1

    .line 178
    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result p1

    .line 178
    invoke-direct {p0, v0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    return-void
.end method

.method private init(Ljava/net/InetAddress;III)V
    .locals 1

    if-eqz p1, :cond_1

    .line 132
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p2, :cond_1

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-gt p2, v0, :cond_1

    :cond_0
    const/16 v0, 0x80

    if-gt p2, v0, :cond_1

    .line 139
    iput-object p1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    .line 140
    iput p2, p0, Landroid/net/LinkAddress;->prefixLength:I

    .line 141
    iput p3, p0, Landroid/net/LinkAddress;->flags:I

    .line 142
    iput p4, p0, Landroid/net/LinkAddress;->scope:I

    return-void

    .line 136
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad LinkAddress params "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isIPv6ULA()Z
    .locals 2

    .line 104
    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIPv6()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 105
    iget-object p0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    .line 106
    aget-byte p0, p0, v1

    and-int/lit8 p0, p0, -0x2

    const/4 v0, -0x4

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private static scopeForUnicastAddress(Ljava/net/InetAddress;)I
    .locals 1

    .line 80
    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget p0, Landroid/system/OsConstants;->RT_SCOPE_HOST:I

    return p0

    .line 84
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 91
    sget p0, Landroid/system/OsConstants;->RT_SCOPE_SITE:I

    return p0

    .line 94
    :cond_2
    sget p0, Landroid/system/OsConstants;->RT_SCOPE_UNIVERSE:I

    return p0

    .line 85
    :cond_3
    :goto_0
    sget p0, Landroid/system/OsConstants;->RT_SCOPE_LINK:I

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 229
    instance-of v0, p1, Landroid/net/LinkAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 232
    :cond_0
    check-cast p1, Landroid/net/LinkAddress;

    .line 233
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    iget-object v2, p1, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/net/LinkAddress;->prefixLength:I

    iget v2, p1, Landroid/net/LinkAddress;->prefixLength:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    iget v2, p1, Landroid/net/LinkAddress;->flags:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Landroid/net/LinkAddress;->scope:I

    iget p1, p1, Landroid/net/LinkAddress;->scope:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 0

    .line 266
    iget-object p0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    .line 289
    iget p0, p0, Landroid/net/LinkAddress;->flags:I

    return p0
.end method

.method public getNetworkPrefixLength()I
    .locals 0

    .line 282
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result p0

    return p0
.end method

.method public getPrefixLength()I
    .locals 0

    .line 273
    iget p0, p0, Landroid/net/LinkAddress;->prefixLength:I

    return p0
.end method

.method public getScope()I
    .locals 0

    .line 296
    iget p0, p0, Landroid/net/LinkAddress;->scope:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 244
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    iget v1, p0, Landroid/net/LinkAddress;->prefixLength:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/LinkAddress;->flags:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    iget p0, p0, Landroid/net/LinkAddress;->scope:I

    mul-int/lit8 p0, p0, 0x2b

    add-int/2addr v0, p0

    return v0
.end method

.method public isGlobalPreferred()Z
    .locals 4

    .line 310
    iget v0, p0, Landroid/net/LinkAddress;->scope:I

    sget v1, Landroid/system/OsConstants;->RT_SCOPE_UNIVERSE:I

    if-ne v0, v1, :cond_1

    .line 311
    invoke-direct {p0}, Landroid/net/LinkAddress;->isIPv6ULA()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    sget v1, Landroid/system/OsConstants;->IFA_F_DADFAILED:I

    sget v2, Landroid/system/OsConstants;->IFA_F_DEPRECATED:I

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    sget v1, Landroid/system/OsConstants;->IFA_F_TENTATIVE:I

    and-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/net/LinkAddress;->flags:I

    sget v0, Landroid/system/OsConstants;->IFA_F_OPTIMISTIC:I

    and-int/2addr p0, v0

    int-to-long v0, p0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIPv4()Z
    .locals 0

    .line 124
    iget-object p0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    instance-of p0, p0, Ljava/net/Inet4Address;

    return p0
.end method

.method public isIPv6()Z
    .locals 0

    .line 116
    iget-object p0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    instance-of p0, p0, Ljava/net/Inet6Address;

    return p0
.end method

.method public isSameAddressAs(Landroid/net/LinkAddress;)Z
    .locals 2

    .line 259
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    iget-object v1, p1, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/net/LinkAddress;->prefixLength:I

    iget p1, p1, Landroid/net/LinkAddress;->prefixLength:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/LinkAddress;->prefixLength:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 327
    iget-object p2, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 328
    iget p2, p0, Landroid/net/LinkAddress;->prefixLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget p2, p0, Landroid/net/LinkAddress;->flags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget p0, p0, Landroid/net/LinkAddress;->scope:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
