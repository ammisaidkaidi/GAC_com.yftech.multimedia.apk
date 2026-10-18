.class public final Landroid/media/AudioFocusInfo;
.super Ljava/lang/Object;
.source "AudioFocusInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioFocusInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttributes:Landroid/media/AudioAttributes;

.field private final mClientId:Ljava/lang/String;

.field private final mClientUid:I

.field private mFlags:I

.field private mGainRequest:I

.field private mGenCount:J

.field private mLossReceived:I

.field private final mPackageName:Ljava/lang/String;

.field private final mSdkTarget:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 191
    new-instance v0, Landroid/media/AudioFocusInfo$1;

    invoke-direct {v0}, Landroid/media/AudioFocusInfo$1;-><init>()V

    sput-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Landroid/media/AudioFocusInfo;->mGenCount:J

    if-nez p1, :cond_0

    .line 58
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    .line 59
    iput p2, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    if-nez p3, :cond_1

    const-string p3, ""

    .line 60
    :cond_1
    iput-object p3, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    if-nez p4, :cond_2

    const-string p4, ""

    .line 61
    :cond_2
    iput-object p4, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    .line 62
    iput p5, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    .line 63
    iput p6, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    .line 64
    iput p7, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    .line 65
    iput p8, p0, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    return-void
.end method


# virtual methods
.method public clearLossReceived()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    return-void
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

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 159
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 161
    :cond_2
    check-cast p1, Landroid/media/AudioFocusInfo;

    .line 162
    iget-object v2, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v3, p1, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 165
    :cond_3
    iget v2, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    iget v3, p1, Landroid/media/AudioFocusInfo;->mClientUid:I

    if-eq v2, v3, :cond_4

    return v1

    .line 168
    :cond_4
    iget-object v2, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 171
    :cond_5
    iget-object v2, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 174
    :cond_6
    iget v2, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    iget v3, p1, Landroid/media/AudioFocusInfo;->mGainRequest:I

    if-eq v2, v3, :cond_7

    return v1

    .line 177
    :cond_7
    iget v2, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    iget v3, p1, Landroid/media/AudioFocusInfo;->mLossReceived:I

    if-eq v2, v3, :cond_8

    return v1

    .line 180
    :cond_8
    iget v2, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    iget v3, p1, Landroid/media/AudioFocusInfo;->mFlags:I

    if-eq v2, v3, :cond_9

    return v1

    .line 183
    :cond_9
    iget p0, p0, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    iget p1, p1, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    if-eq p0, p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getAttributes()Landroid/media/AudioAttributes;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 84
    iget-object p0, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 90
    iget-object p0, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public getClientUid()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 87
    iget p0, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    return p0
.end method

.method public getFlags()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 128
    iget p0, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    return p0
.end method

.method public getGainRequest()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 103
    iget p0, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    return p0
.end method

.method public getGen()J
    .locals 2

    .line 75
    iget-wide v0, p0, Landroid/media/AudioFocusInfo;->mGenCount:J

    return-wide v0
.end method

.method public getLossReceived()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 113
    iget p0, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 93
    iget-object p0, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkTarget()I
    .locals 0

    .line 116
    iget p0, p0, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    .line 150
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget p0, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setGen(J)V
    .locals 0

    .line 70
    iput-wide p1, p0, Landroid/media/AudioFocusInfo;->mGenCount:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 137
    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 138
    iget p2, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object p2, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object p2, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget p2, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget p2, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget p2, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget p2, p0, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-wide v0, p0, Landroid/media/AudioFocusInfo;->mGenCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
