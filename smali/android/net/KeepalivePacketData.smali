.class public Landroid/net/KeepalivePacketData;
.super Ljava/lang/Object;
.source "KeepalivePacketData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/KeepalivePacketData$InvalidPacketException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/KeepalivePacketData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IPV4_HEADER_LENGTH:I = 0x14

.field private static final TAG:Ljava/lang/String; = "KeepalivePacketData"

.field private static final UDP_HEADER_LENGTH:I = 0x8


# instance fields
.field public final dstAddress:Ljava/net/InetAddress;

.field public final dstPort:I

.field private final mPacket:[B

.field public final srcAddress:Ljava/net/InetAddress;

.field public final srcPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    new-instance v0, Landroid/net/KeepalivePacketData$1;

    invoke-direct {v0}, Landroid/net/KeepalivePacketData$1;-><init>()V

    sput-object v0, Landroid/net/KeepalivePacketData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/KeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/KeepalivePacketData;->srcPort:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/KeepalivePacketData;->dstPort:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/net/KeepalivePacketData;->mPacket:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/KeepalivePacketData$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/net/KeepalivePacketData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/KeepalivePacketData$InvalidPacketException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/net/KeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    .line 64
    iput-object p3, p0, Landroid/net/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    .line 65
    iput p2, p0, Landroid/net/KeepalivePacketData;->srcPort:I

    .line 66
    iput p4, p0, Landroid/net/KeepalivePacketData;->dstPort:I

    .line 67
    iput-object p5, p0, Landroid/net/KeepalivePacketData;->mPacket:[B

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 77
    invoke-static {p2}, Landroid/net/util/IpUtils;->isValidUdpOrTcpPort(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p4}, Landroid/net/util/IpUtils;->isValidUdpOrTcpPort(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "KeepalivePacketData"

    const-string p1, "Invalid ports in KeepalivePacketData"

    .line 78
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance p0, Landroid/net/KeepalivePacketData$InvalidPacketException;

    const/16 p1, -0x16

    invoke-direct {p0, p1}, Landroid/net/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    throw p0

    :cond_1
    const-string p0, "KeepalivePacketData"

    const-string p1, "Invalid or mismatched InetAddresses in KeepalivePacketData"

    .line 72
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance p0, Landroid/net/KeepalivePacketData$InvalidPacketException;

    const/16 p1, -0x15

    invoke-direct {p0, p1}, Landroid/net/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    throw p0
.end method

.method public static nattKeepalivePacket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Landroid/net/KeepalivePacketData;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/KeepalivePacketData$InvalidPacketException;
        }
    .end annotation

    .line 98
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    const/16 v0, 0x1194

    if-ne p3, v0, :cond_0

    const/16 v0, 0x1d

    .line 107
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 108
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v2, 0x4500

    .line 109
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short v0, v0

    .line 110
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 111
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v2, 0x40

    .line 112
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 113
    sget v2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 114
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 115
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 116
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 117
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    int-to-short v3, p1

    .line 118
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short v3, p3

    .line 119
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v3, 0x9

    int-to-short v3, v3

    .line 120
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 122
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v4, -0x1

    .line 123
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 124
    invoke-static {v1, v0}, Landroid/net/util/IpUtils;->ipChecksum(Ljava/nio/ByteBuffer;I)S

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/16 v2, 0x14

    .line 125
    invoke-static {v1, v0, v2}, Landroid/net/util/IpUtils;->udpChecksum(Ljava/nio/ByteBuffer;II)S

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 127
    new-instance v0, Landroid/net/KeepalivePacketData;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    move-object v4, v0

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v4 .. v9}, Landroid/net/KeepalivePacketData;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[B)V

    return-object v0

    .line 103
    :cond_0
    new-instance p0, Landroid/net/KeepalivePacketData$InvalidPacketException;

    const/16 p1, -0x16

    invoke-direct {p0, p1}, Landroid/net/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    throw p0

    .line 99
    :cond_1
    new-instance p0, Landroid/net/KeepalivePacketData$InvalidPacketException;

    const/16 p1, -0x15

    invoke-direct {p0, p1}, Landroid/net/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPacket()[B
    .locals 0

    .line 91
    iget-object p0, p0, Landroid/net/KeepalivePacketData;->mPacket:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 137
    iget-object p2, p0, Landroid/net/KeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object p2, p0, Landroid/net/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget p2, p0, Landroid/net/KeepalivePacketData;->srcPort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget p2, p0, Landroid/net/KeepalivePacketData;->dstPort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object p0, p0, Landroid/net/KeepalivePacketData;->mPacket:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
