.class public final Landroid/net/wifi/aware/SubscribeConfig;
.super Ljava/lang/Object;
.source "SubscribeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/SubscribeConfig$Builder;,
        Landroid/net/wifi/aware/SubscribeConfig$SubscribeTypes;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/SubscribeConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBSCRIBE_TYPE_ACTIVE:I = 0x1

.field public static final SUBSCRIBE_TYPE_PASSIVE:I


# instance fields
.field public final mEnableTerminateNotification:Z

.field public final mMatchFilter:[B

.field public final mMaxDistanceMm:I

.field public final mMaxDistanceMmSet:Z

.field public final mMinDistanceMm:I

.field public final mMinDistanceMmSet:Z

.field public final mServiceName:[B

.field public final mServiceSpecificInfo:[B

.field public final mSubscribeType:I

.field public final mTtlSec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Landroid/net/wifi/aware/SubscribeConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/SubscribeConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/SubscribeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([B[B[BIIZZIZI)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    .line 100
    iput-object p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    .line 101
    iput-object p3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    .line 102
    iput p4, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    .line 103
    iput p5, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    .line 104
    iput-boolean p6, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    .line 105
    iput p8, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    .line 106
    iput-boolean p7, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    .line 107
    iput p10, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    .line 108
    iput-boolean p9, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    return-void
.end method


# virtual methods
.method public assertValid(Landroid/net/wifi/aware/Characteristics;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-static {v0}, Landroid/net/wifi/aware/WifiAwareUtils;->validateServiceName([B)V

    .line 231
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/net/wifi/aware/TlvBufferUtils;->isValid([BII)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 235
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    if-ltz v0, :cond_f

    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    if-gt v0, v1, :cond_f

    .line 238
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    if-ltz v0, :cond_e

    if-eqz p1, :cond_5

    .line 243
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxServiceNameLength()I

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    array-length v1, v1

    if-gt v1, v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Service name longer than supported by device characteristics"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 248
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxServiceSpecificInfoLength()I

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    array-length v1, v1

    if-gt v1, v0, :cond_2

    goto :goto_1

    .line 251
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Service specific info longer than supported by device characteristics"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 254
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxMatchFilterLength()I

    move-result p1

    if-eqz p1, :cond_5

    .line 255
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    array-length v0, v0

    if-gt v0, p1, :cond_4

    goto :goto_2

    .line 257
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Match filter longer than supported by device characteristics"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 262
    :cond_5
    :goto_2
    iget-boolean p1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-eqz p1, :cond_7

    iget p1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    if-ltz p1, :cond_6

    goto :goto_3

    .line 263
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum distance must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 265
    :cond_7
    :goto_3
    iget-boolean p1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eqz p1, :cond_9

    iget p1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    if-ltz p1, :cond_8

    goto :goto_4

    .line 266
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Maximum distance must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 268
    :cond_9
    :goto_4
    iget-boolean p1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eqz p1, :cond_b

    iget p1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    if-le p1, v0, :cond_a

    goto :goto_5

    .line 269
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Maximum distance must be greater than minimum distance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_5
    if-nez p2, :cond_d

    .line 273
    iget-boolean p1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-nez p1, :cond_c

    iget-boolean p0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-nez p0, :cond_c

    goto :goto_6

    .line 274
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Ranging is not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_6
    return-void

    .line 239
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid ttlSec - must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 236
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid subscribeType - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 232
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid matchFilter configuration - LV fields do not match up to length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 180
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/aware/SubscribeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 184
    :cond_1
    check-cast p1, Landroid/net/wifi/aware/SubscribeConfig;

    .line 186
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    iget-object v3, p1, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    iget-object v3, p1, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    iget-object v3, p1, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    .line 187
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    iget v3, p1, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    iget v3, p1, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    if-ne v1, v3, :cond_5

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    iget-boolean v3, p1, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    if-ne v1, v3, :cond_5

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    iget-boolean v3, p1, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-ne v1, v3, :cond_5

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    iget-boolean v3, p1, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 195
    :cond_2
    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    iget v3, p1, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    if-eq v1, v3, :cond_3

    return v2

    .line 199
    :cond_3
    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eqz v1, :cond_4

    iget p0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    iget p1, p1, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v2
.end method

.method public hashCode()I
    .locals 6

    const/16 v0, 0x8

    .line 208
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v0, v5

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v5, 0x6

    aput-object v1, v0, v5

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v5, 0x7

    aput-object v1, v0, v5

    .line 208
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 211
    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-eqz v1, :cond_0

    .line 212
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 214
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eqz v1, :cond_1

    .line 215
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    iget p0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubscribeConfig [mServiceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    if-nez v1, :cond_0

    const-string v1, "<null>"

    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceName.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    array-length v1, v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceSpecificInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    if-nez v1, :cond_2

    const-string v1, "<null>"

    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    .line 117
    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v1

    .line 116
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceSpecificInfo.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    .line 119
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    array-length v1, v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMatchFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    invoke-direct {v1, v2, v3, v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;-><init>(II[B)V

    .line 120
    invoke-virtual {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMatchFilter.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    array-length v2, v1

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSubscribeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTtlSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableTerminateNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMinDistanceMm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMinDistanceMmSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxDistanceMm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxDistanceMmSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 137
    iget-object p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 138
    iget-object p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 139
    iget-object p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 140
    iget p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-boolean p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-boolean p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-boolean p0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
