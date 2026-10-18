.class Landroid/net/IpPrefix$1;
.super Ljava/lang/Object;
.source "IpPrefix.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/IpPrefix;->lengthComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/net/IpPrefix;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/IpPrefix;Landroid/net/IpPrefix;)I
    .locals 6

    .line 256
    invoke-virtual {p1}, Landroid/net/IpPrefix;->isIPv4()Z

    move-result p0

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 257
    invoke-virtual {p2}, Landroid/net/IpPrefix;->isIPv6()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    .line 259
    :cond_0
    invoke-virtual {p2}, Landroid/net/IpPrefix;->isIPv4()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    .line 261
    :cond_1
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result p0

    .line 262
    invoke-virtual {p2}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v2

    if-ge p0, v2, :cond_2

    return v0

    :cond_2
    if-ge v2, p0, :cond_3

    return v1

    .line 265
    :cond_3
    invoke-static {p1}, Landroid/net/IpPrefix;->access$000(Landroid/net/IpPrefix;)[B

    move-result-object p0

    .line 266
    invoke-static {p2}, Landroid/net/IpPrefix;->access$000(Landroid/net/IpPrefix;)[B

    move-result-object p1

    .line 267
    array-length p2, p0

    array-length v2, p1

    if-ge p2, v2, :cond_4

    array-length p2, p0

    goto :goto_0

    :cond_4
    array-length p2, p1

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, p2, :cond_7

    .line 269
    aget-byte v4, p0, v3

    aget-byte v5, p1, v3

    if-ge v4, v5, :cond_5

    return v0

    .line 270
    :cond_5
    aget-byte v4, p0, v3

    aget-byte v5, p1, v3

    if-le v4, v5, :cond_6

    return v1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 272
    :cond_7
    array-length p1, p1

    if-ge p1, p2, :cond_8

    return v1

    .line 273
    :cond_8
    array-length p0, p0

    if-ge p0, p2, :cond_9

    return v0

    :cond_9
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 253
    check-cast p1, Landroid/net/IpPrefix;

    check-cast p2, Landroid/net/IpPrefix;

    invoke-virtual {p0, p1, p2}, Landroid/net/IpPrefix$1;->compare(Landroid/net/IpPrefix;Landroid/net/IpPrefix;)I

    move-result p0

    return p0
.end method
