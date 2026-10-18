.class public final Landroid/telephony/data/DataProfile;
.super Ljava/lang/Object;
.source "DataProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_3GPP:I = 0x1

.field public static final TYPE_3GPP2:I = 0x2

.field public static final TYPE_COMMON:I


# instance fields
.field private final mApn:Ljava/lang/String;

.field private final mAuthType:I

.field private final mBearerBitmap:I

.field private final mEnabled:Z

.field private final mMaxConns:I

.field private final mMaxConnsTime:I

.field private final mModemCognitive:Z

.field private final mMtu:I

.field private final mMvnoMatchData:Ljava/lang/String;

.field private final mMvnoType:Ljava/lang/String;

.field private final mPassword:Ljava/lang/String;

.field private final mProfileId:I

.field private final mProtocol:Ljava/lang/String;

.field private final mRoamingProtocol:Ljava/lang/String;

.field private final mSupportedApnTypesBitmap:I

.field private final mType:I

.field private final mUserName:Ljava/lang/String;

.field private final mWaitTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 269
    new-instance v0, Landroid/telephony/data/DataProfile$1;

    invoke-direct {v0}, Landroid/telephony/data/DataProfile$1;-><init>()V

    sput-object v0, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    move-object v0, p0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 81
    iput v1, v0, Landroid/telephony/data/DataProfile;->mProfileId:I

    move-object v1, p2

    .line 82
    iput-object v1, v0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    move-object v1, p3

    .line 83
    iput-object v1, v0, Landroid/telephony/data/DataProfile;->mProtocol:Ljava/lang/String;

    const/4 v1, -0x1

    move v2, p4

    if-ne v2, v1, :cond_1

    .line 85
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 88
    :goto_0
    iput v1, v0, Landroid/telephony/data/DataProfile;->mAuthType:I

    move-object v1, p5

    .line 89
    iput-object v1, v0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    move-object v1, p6

    .line 90
    iput-object v1, v0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    move v1, p7

    .line 91
    iput v1, v0, Landroid/telephony/data/DataProfile;->mType:I

    move v1, p8

    .line 92
    iput v1, v0, Landroid/telephony/data/DataProfile;->mMaxConnsTime:I

    move v1, p9

    .line 93
    iput v1, v0, Landroid/telephony/data/DataProfile;->mMaxConns:I

    move v1, p10

    .line 94
    iput v1, v0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    move v1, p11

    .line 95
    iput-boolean v1, v0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    move v1, p12

    .line 97
    iput v1, v0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmap:I

    move-object/from16 v1, p13

    .line 98
    iput-object v1, v0, Landroid/telephony/data/DataProfile;->mRoamingProtocol:Ljava/lang/String;

    move/from16 v1, p14

    .line 99
    iput v1, v0, Landroid/telephony/data/DataProfile;->mBearerBitmap:I

    move/from16 v1, p15

    .line 100
    iput v1, v0, Landroid/telephony/data/DataProfile;->mMtu:I

    move-object/from16 v1, p16

    .line 101
    iput-object v1, v0, Landroid/telephony/data/DataProfile;->mMvnoType:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 102
    iput-object v1, v0, Landroid/telephony/data/DataProfile;->mMvnoMatchData:Ljava/lang/String;

    move/from16 v1, p18

    .line 103
    iput-boolean v1, v0, Landroid/telephony/data/DataProfile;->mModemCognitive:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mProtocol:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mAuthType:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mMaxConnsTime:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mMaxConns:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmap:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mRoamingProtocol:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mBearerBitmap:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mMtu:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mMvnoType:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mMvnoMatchData:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/telephony/data/DataProfile;->mModemCognitive:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 243
    instance-of v0, p1, Landroid/telephony/data/DataProfile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eq p1, p0, :cond_1

    .line 244
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getApn()Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthType()I
    .locals 0

    .line 147
    iget p0, p0, Landroid/telephony/data/DataProfile;->mAuthType:I

    return p0
.end method

.method public getBearerBitmap()I
    .locals 0

    .line 200
    iget p0, p0, Landroid/telephony/data/DataProfile;->mBearerBitmap:I

    return p0
.end method

.method public getMaxConns()I
    .locals 0

    .line 172
    iget p0, p0, Landroid/telephony/data/DataProfile;->mMaxConns:I

    return p0
.end method

.method public getMaxConnsTime()I
    .locals 0

    .line 167
    iget p0, p0, Landroid/telephony/data/DataProfile;->mMaxConnsTime:I

    return p0
.end method

.method public getMtu()I
    .locals 0

    .line 205
    iget p0, p0, Landroid/telephony/data/DataProfile;->mMtu:I

    return p0
.end method

.method public getMvnoMatchData()Ljava/lang/String;
    .locals 0

    .line 218
    iget-object p0, p0, Landroid/telephony/data/DataProfile;->mMvnoMatchData:Ljava/lang/String;

    return-object p0
.end method

.method public getMvnoType()Ljava/lang/String;
    .locals 0

    .line 210
    iget-object p0, p0, Landroid/telephony/data/DataProfile;->mMvnoType:Ljava/lang/String;

    return-object p0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 0

    .line 157
    iget-object p0, p0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public getProfileId()I
    .locals 0

    .line 130
    iget p0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    return p0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 0

    .line 141
    iget-object p0, p0, Landroid/telephony/data/DataProfile;->mProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public getRoamingProtocol()Ljava/lang/String;
    .locals 0

    .line 195
    iget-object p0, p0, Landroid/telephony/data/DataProfile;->mRoamingProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedApnTypesBitmap()I
    .locals 0

    .line 189
    iget p0, p0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmap:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 162
    iget p0, p0, Landroid/telephony/data/DataProfile;->mType:I

    return p0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 0

    .line 152
    iget-object p0, p0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    return-object p0
.end method

.method public getWaitTime()I
    .locals 0

    .line 179
    iget p0, p0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 184
    iget-boolean p0, p0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    return p0
.end method

.method public isModemCognitive()Z
    .locals 0

    .line 223
    iget-boolean p0, p0, Landroid/telephony/data/DataProfile;->mModemCognitive:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mAuthType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-eqz v1, :cond_0

    const-string v1, "***/***/***"

    goto :goto_0

    .line 234
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mMaxConnsTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mMaxConns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mRoamingProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mBearerBitmap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mMtu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mMvnoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/telephony/data/DataProfile;->mModemCognitive:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 249
    iget p2, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-object p2, p0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object p2, p0, Landroid/telephony/data/DataProfile;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget p2, p0, Landroid/telephony/data/DataProfile;->mAuthType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-object p2, p0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object p2, p0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget p2, p0, Landroid/telephony/data/DataProfile;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget p2, p0, Landroid/telephony/data/DataProfile;->mMaxConnsTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget p2, p0, Landroid/telephony/data/DataProfile;->mMaxConns:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget p2, p0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-boolean p2, p0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 260
    iget p2, p0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmap:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object p2, p0, Landroid/telephony/data/DataProfile;->mRoamingProtocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget p2, p0, Landroid/telephony/data/DataProfile;->mBearerBitmap:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget p2, p0, Landroid/telephony/data/DataProfile;->mMtu:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-object p2, p0, Landroid/telephony/data/DataProfile;->mMvnoType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object p2, p0, Landroid/telephony/data/DataProfile;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-boolean p0, p0, Landroid/telephony/data/DataProfile;->mModemCognitive:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
