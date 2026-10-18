.class public Landroid/net/lowpan/LowpanBeaconInfo;
.super Ljava/lang/Object;
.source "LowpanBeaconInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/lowpan/LowpanBeaconInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_CAN_ASSIST:I = 0x1

.field public static final UNKNOWN_LQI:I = 0x0

.field public static final UNKNOWN_RSSI:I = 0x7fffffff


# instance fields
.field private mBeaconAddress:[B

.field private final mFlags:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIdentity:Landroid/net/lowpan/LowpanIdentity;

.field private mLqi:I

.field private mRssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 211
    new-instance v0, Landroid/net/lowpan/LowpanBeaconInfo$1;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanBeaconInfo$1;-><init>()V

    sput-object v0, Landroid/net/lowpan/LowpanBeaconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 38
    iput v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    .line 41
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/lowpan/LowpanBeaconInfo$1;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/net/lowpan/LowpanBeaconInfo;-><init>()V

    return-void
.end method

.method static synthetic access$102(Landroid/net/lowpan/LowpanBeaconInfo;I)I
    .locals 0

    .line 33
    iput p1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    return p1
.end method

.method static synthetic access$202(Landroid/net/lowpan/LowpanBeaconInfo;I)I
    .locals 0

    .line 33
    iput p1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    return p1
.end method

.method static synthetic access$300(Landroid/net/lowpan/LowpanBeaconInfo;)[B
    .locals 0

    .line 33
    iget-object p0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    return-object p0
.end method

.method static synthetic access$302(Landroid/net/lowpan/LowpanBeaconInfo;[B)[B
    .locals 0

    .line 33
    iput-object p1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    return-object p1
.end method

.method static synthetic access$400(Landroid/net/lowpan/LowpanBeaconInfo;)Ljava/util/TreeSet;
    .locals 0

    .line 33
    iget-object p0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    return-object p0
.end method

.method static synthetic access$502(Landroid/net/lowpan/LowpanBeaconInfo;Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanIdentity;
    .locals 0

    .line 33
    iput-object p1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 179
    instance-of v0, p1, Landroid/net/lowpan/LowpanBeaconInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 182
    :cond_0
    check-cast p1, Landroid/net/lowpan/LowpanBeaconInfo;

    .line 183
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    iget-object v2, p1, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {v0, v2}, Landroid/net/lowpan/LowpanIdentity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    iget-object v2, p1, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    .line 184
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    iget v2, p1, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    iget v2, p1, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    iget-object p1, p1, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    .line 187
    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getBeaconAddress()[B
    .locals 0

    .line 129
    iget-object p0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getFlags()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object p0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;
    .locals 0

    .line 117
    iget-object p0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    return-object p0
.end method

.method public getLqi()I
    .locals 0

    .line 125
    iget p0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    return p0
.end method

.method public getRssi()I
    .locals 0

    .line 121
    iget p0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 174
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isFlagSet(I)Z
    .locals 0

    .line 137
    iget-object p0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 142
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {v1}, Landroid/net/lowpan/LowpanIdentity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    const-string v1, ", RSSI:"

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "dBm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    :cond_0
    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    if-eqz v1, :cond_1

    const-string v1, ", LQI:"

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 154
    :cond_1
    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    array-length v1, v1

    if-lez v1, :cond_2

    const-string v1, ", BeaconAddress:"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    :cond_2
    iget-object p0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 159
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const-string v2, ", FLAG_"

    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string v1, ", CAN_ASSIST"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 169
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 199
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {v0, p1, p2}, Landroid/net/lowpan/LowpanIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 200
    iget p2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget p2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-object p2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 204
    iget-object p2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-object p0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 206
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
