.class public final Landroid/net/IpSecConfig;
.super Ljava/lang/Object;
.source "IpSecConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IpSecConfig"


# instance fields
.field private mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

.field private mAuthentication:Landroid/net/IpSecAlgorithm;

.field private mDestinationAddress:Ljava/lang/String;

.field private mEncapRemotePort:I

.field private mEncapSocketResourceId:I

.field private mEncapType:I

.field private mEncryption:Landroid/net/IpSecAlgorithm;

.field private mMarkMask:I

.field private mMarkValue:I

.field private mMode:I

.field private mNattKeepaliveInterval:I

.field private mNetwork:Landroid/net/Network;

.field private mSourceAddress:Ljava/lang/String;

.field private mSpiResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 297
    new-instance v0, Landroid/net/IpSecConfig$1;

    invoke-direct {v0}, Landroid/net/IpSecConfig$1;-><init>()V

    sput-object v0, Landroid/net/IpSecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    const-string v1, ""

    .line 36
    iput-object v1, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    const-string v1, ""

    .line 39
    iput-object v1, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    const/4 v1, -0x1

    .line 48
    iput v1, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    .line 61
    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    .line 62
    iput v1, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    return-void
.end method

.method public constructor <init>(Landroid/net/IpSecConfig;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    const-string v1, ""

    .line 36
    iput-object v1, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    const-string v1, ""

    .line 39
    iput-object v1, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    const/4 v1, -0x1

    .line 48
    iput v1, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    .line 61
    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    .line 62
    iput v1, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    .line 224
    iget v0, p1, Landroid/net/IpSecConfig;->mMode:I

    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    .line 225
    iget-object v0, p1, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    .line 226
    iget-object v0, p1, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    .line 227
    iget-object v0, p1, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    .line 228
    iget v0, p1, Landroid/net/IpSecConfig;->mSpiResourceId:I

    iput v0, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    .line 229
    iget-object v0, p1, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    .line 230
    iget-object v0, p1, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    .line 231
    iget-object v0, p1, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    .line 232
    iget v0, p1, Landroid/net/IpSecConfig;->mEncapType:I

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    .line 233
    iget v0, p1, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    .line 234
    iget v0, p1, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    .line 235
    iget v0, p1, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    iput v0, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    .line 236
    iget v0, p1, Landroid/net/IpSecConfig;->mMarkValue:I

    iput v0, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    .line 237
    iget p1, p1, Landroid/net/IpSecConfig;->mMarkMask:I

    iput p1, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    const-string v1, ""

    .line 36
    iput-object v1, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    const-string v1, ""

    .line 39
    iput-object v1, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    const/4 v1, -0x1

    .line 48
    iput v1, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    .line 61
    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    .line 62
    iput v1, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    .line 244
    const-class v0, Landroid/net/Network;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    .line 246
    const-class v0, Landroid/net/IpSecAlgorithm;

    .line 247
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    .line 248
    const-class v0, Landroid/net/IpSecAlgorithm;

    .line 249
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    .line 250
    const-class v0, Landroid/net/IpSecAlgorithm;

    .line 251
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/IpSecConfig$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/net/IpSecConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static equals(Landroid/net/IpSecConfig;Landroid/net/IpSecConfig;)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 312
    :cond_0
    iget v2, p0, Landroid/net/IpSecConfig;->mMode:I

    iget v3, p1, Landroid/net/IpSecConfig;->mMode:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    .line 313
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    .line 314
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    iget-object v3, p1, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    .line 315
    invoke-virtual {v2, v3}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    iget-object v3, p1, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    if-ne v2, v3, :cond_3

    :cond_2
    iget v2, p0, Landroid/net/IpSecConfig;->mEncapType:I

    iget v3, p1, Landroid/net/IpSecConfig;->mEncapType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    iget v3, p1, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    iget v3, p1, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    iget v3, p1, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    iget v3, p1, Landroid/net/IpSecConfig;->mSpiResourceId:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    iget-object v3, p1, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    .line 322
    invoke-static {v2, v3}, Landroid/net/IpSecAlgorithm;->equals(Landroid/net/IpSecAlgorithm;Landroid/net/IpSecAlgorithm;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    iget-object v3, p1, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    .line 323
    invoke-static {v2, v3}, Landroid/net/IpSecAlgorithm;->equals(Landroid/net/IpSecAlgorithm;Landroid/net/IpSecAlgorithm;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    iget-object v3, p1, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    .line 325
    invoke-static {v2, v3}, Landroid/net/IpSecAlgorithm;->equals(Landroid/net/IpSecAlgorithm;Landroid/net/IpSecAlgorithm;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    iget v3, p1, Landroid/net/IpSecConfig;->mMarkValue:I

    if-ne v2, v3, :cond_3

    iget p0, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    iget p1, p1, Landroid/net/IpSecConfig;->mMarkMask:I

    if-ne p0, p1, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    if-ne p0, p1, :cond_5

    move v0, v1

    :cond_5
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAuthenticatedEncryption()Landroid/net/IpSecAlgorithm;
    .locals 0

    .line 162
    iget-object p0, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    return-object p0
.end method

.method public getAuthentication()Landroid/net/IpSecAlgorithm;
    .locals 0

    .line 158
    iget-object p0, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    return-object p0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 0

    .line 150
    iget-object p0, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getEncapRemotePort()I
    .locals 0

    .line 178
    iget p0, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    return p0
.end method

.method public getEncapSocketResourceId()I
    .locals 0

    .line 174
    iget p0, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    return p0
.end method

.method public getEncapType()I
    .locals 0

    .line 170
    iget p0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    return p0
.end method

.method public getEncryption()Landroid/net/IpSecAlgorithm;
    .locals 0

    .line 154
    iget-object p0, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    return-object p0
.end method

.method public getMarkMask()I
    .locals 0

    .line 190
    iget p0, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    return p0
.end method

.method public getMarkValue()I
    .locals 0

    .line 186
    iget p0, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    return p0
.end method

.method public getMode()I
    .locals 0

    .line 138
    iget p0, p0, Landroid/net/IpSecConfig;->mMode:I

    return p0
.end method

.method public getNattKeepaliveInterval()I
    .locals 0

    .line 182
    iget p0, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    return p0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 0

    .line 166
    iget-object p0, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public getSourceAddress()Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getSpiResourceId()I
    .locals 0

    .line 146
    iget p0, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    return p0
.end method

.method public setAuthenticatedEncryption(Landroid/net/IpSecAlgorithm;)V
    .locals 0

    .line 104
    iput-object p1, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    return-void
.end method

.method public setAuthentication(Landroid/net/IpSecAlgorithm;)V
    .locals 0

    .line 99
    iput-object p1, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    return-void
.end method

.method public setDestinationAddress(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    return-void
.end method

.method public setEncapRemotePort(I)V
    .locals 0

    .line 121
    iput p1, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    return-void
.end method

.method public setEncapSocketResourceId(I)V
    .locals 0

    .line 117
    iput p1, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    return-void
.end method

.method public setEncapType(I)V
    .locals 0

    .line 113
    iput p1, p0, Landroid/net/IpSecConfig;->mEncapType:I

    return-void
.end method

.method public setEncryption(Landroid/net/IpSecAlgorithm;)V
    .locals 0

    .line 94
    iput-object p1, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    return-void
.end method

.method public setMarkMask(I)V
    .locals 0

    .line 133
    iput p1, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    return-void
.end method

.method public setMarkValue(I)V
    .locals 0

    .line 129
    iput p1, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 74
    iput p1, p0, Landroid/net/IpSecConfig;->mMode:I

    return-void
.end method

.method public setNattKeepaliveInterval(I)V
    .locals 0

    .line 125
    iput p1, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 0

    .line 109
    iput-object p1, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method public setSourceAddress(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    return-void
.end method

.method public setSpiResourceId(I)V
    .locals 0

    .line 89
    iput p1, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mMode="

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget v1, p0, Landroid/net/IpSecConfig;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "TUNNEL"

    goto :goto_0

    :cond_0
    const-string v1, "TRANSPORT"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSourceAddress="

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDestinationAddress="

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNetwork="

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEncapType="

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mEncapType:I

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEncapSocketResourceId="

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEncapRemotePort="

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNattKeepaliveInterval="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mSpiResourceId="

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEncryption="

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAuthentication="

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAuthenticatedEncryption="

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMarkValue="

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMarkMask="

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    .line 291
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 292
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 202
    iget v0, p0, Landroid/net/IpSecConfig;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-object v0, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 206
    iget v0, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-object v0, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 208
    iget-object v0, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 209
    iget-object v0, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 210
    iget p2, p0, Landroid/net/IpSecConfig;->mEncapType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget p2, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget p2, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget p2, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget p2, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget p0, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
