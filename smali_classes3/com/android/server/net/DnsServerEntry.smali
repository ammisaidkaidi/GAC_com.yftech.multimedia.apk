.class Lcom/android/server/net/DnsServerEntry;
.super Ljava/lang/Object;
.source "NetlinkTracker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/net/DnsServerEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/net/InetAddress;

.field public expiry:J


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/android/server/net/DnsServerEntry;->address:Ljava/net/InetAddress;

    .line 223
    iput-wide p2, p0, Lcom/android/server/net/DnsServerEntry;->expiry:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/net/DnsServerEntry;)I
    .locals 2

    .line 227
    iget-wide v0, p1, Lcom/android/server/net/DnsServerEntry;->expiry:J

    iget-wide p0, p0, Lcom/android/server/net/DnsServerEntry;->expiry:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 214
    check-cast p1, Lcom/android/server/net/DnsServerEntry;

    invoke-virtual {p0, p1}, Lcom/android/server/net/DnsServerEntry;->compareTo(Lcom/android/server/net/DnsServerEntry;)I

    move-result p0

    return p0
.end method
