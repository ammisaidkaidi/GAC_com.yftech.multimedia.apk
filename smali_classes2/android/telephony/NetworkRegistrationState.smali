.class public Landroid/telephony/NetworkRegistrationState;
.super Ljava/lang/Object;
.source "NetworkRegistrationState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/NetworkRegistrationState$ServiceType;,
        Landroid/telephony/NetworkRegistrationState$RegState;,
        Landroid/telephony/NetworkRegistrationState$Domain;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/NetworkRegistrationState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOMAIN_CS:I = 0x1

.field public static final DOMAIN_PS:I = 0x2

.field public static final REG_STATE_DENIED:I = 0x3

.field public static final REG_STATE_HOME:I = 0x1

.field public static final REG_STATE_NOT_REG_NOT_SEARCHING:I = 0x0

.field public static final REG_STATE_NOT_REG_SEARCHING:I = 0x2

.field public static final REG_STATE_ROAMING:I = 0x5

.field public static final REG_STATE_UNKNOWN:I = 0x4

.field public static final SERVICE_TYPE_DATA:I = 0x2

.field public static final SERVICE_TYPE_EMERGENCY:I = 0x5

.field public static final SERVICE_TYPE_SMS:I = 0x3

.field public static final SERVICE_TYPE_VIDEO:I = 0x4

.field public static final SERVICE_TYPE_VOICE:I = 0x1


# instance fields
.field private final mAccessNetworkTechnology:I

.field private final mAvailableServices:[I

.field private final mCellIdentity:Landroid/telephony/CellIdentity;

.field private mDataSpecificStates:Landroid/telephony/DataSpecificRegistrationStates;

.field private final mDomain:I

.field private final mEmergencyOnly:Z

.field private final mReasonForDenial:I

.field private final mRegState:I

.field private final mTransportType:I

.field private mVoiceSpecificStates:Landroid/telephony/VoiceSpecificRegistrationStates;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 318
    new-instance v0, Landroid/telephony/NetworkRegistrationState$1;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationState$1;-><init>()V

    sput-object v0, Landroid/telephony/NetworkRegistrationState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIZ[ILandroid/telephony/CellIdentity;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Landroid/telephony/NetworkRegistrationState;->mTransportType:I

    .line 125
    iput p2, p0, Landroid/telephony/NetworkRegistrationState;->mDomain:I

    .line 126
    iput p3, p0, Landroid/telephony/NetworkRegistrationState;->mRegState:I

    .line 127
    iput p4, p0, Landroid/telephony/NetworkRegistrationState;->mAccessNetworkTechnology:I

    .line 128
    iput p5, p0, Landroid/telephony/NetworkRegistrationState;->mReasonForDenial:I

    .line 129
    iput-object p7, p0, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    .line 130
    iput-object p8, p0, Landroid/telephony/NetworkRegistrationState;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 131
    iput-boolean p6, p0, Landroid/telephony/NetworkRegistrationState;->mEmergencyOnly:Z

    return-void
.end method

.method public constructor <init>(IIIIIZ[ILandroid/telephony/CellIdentity;I)V
    .locals 0

    .line 156
    invoke-direct/range {p0 .. p8}, Landroid/telephony/NetworkRegistrationState;-><init>(IIIIIZ[ILandroid/telephony/CellIdentity;)V

    .line 159
    new-instance p1, Landroid/telephony/DataSpecificRegistrationStates;

    invoke-direct {p1, p9}, Landroid/telephony/DataSpecificRegistrationStates;-><init>(I)V

    iput-object p1, p0, Landroid/telephony/NetworkRegistrationState;->mDataSpecificStates:Landroid/telephony/DataSpecificRegistrationStates;

    return-void
.end method

.method public constructor <init>(IIIIIZ[ILandroid/telephony/CellIdentity;ZIII)V
    .locals 0

    .line 142
    invoke-direct/range {p0 .. p8}, Landroid/telephony/NetworkRegistrationState;-><init>(IIIIIZ[ILandroid/telephony/CellIdentity;)V

    .line 145
    new-instance p1, Landroid/telephony/VoiceSpecificRegistrationStates;

    invoke-direct {p1, p9, p10, p11, p12}, Landroid/telephony/VoiceSpecificRegistrationStates;-><init>(ZIII)V

    iput-object p1, p0, Landroid/telephony/NetworkRegistrationState;->mVoiceSpecificStates:Landroid/telephony/VoiceSpecificRegistrationStates;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationState;->mTransportType:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationState;->mDomain:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationState;->mRegState:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationState;->mAccessNetworkTechnology:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationState;->mReasonForDenial:I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/NetworkRegistrationState;->mEmergencyOnly:Z

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    .line 170
    const-class v0, Landroid/telephony/CellIdentity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentity;

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationState;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 171
    const-class v0, Landroid/telephony/VoiceSpecificRegistrationStates;

    .line 172
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 171
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/VoiceSpecificRegistrationStates;

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationState;->mVoiceSpecificStates:Landroid/telephony/VoiceSpecificRegistrationStates;

    .line 173
    const-class v0, Landroid/telephony/DataSpecificRegistrationStates;

    .line 174
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 173
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/telephony/DataSpecificRegistrationStates;

    iput-object p1, p0, Landroid/telephony/NetworkRegistrationState;->mDataSpecificStates:Landroid/telephony/DataSpecificRegistrationStates;

    return-void
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 337
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static regStateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown reg state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "ROAMING"

    return-object p0

    :pswitch_1
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_2
    const-string p0, "DENIED"

    return-object p0

    :pswitch_3
    const-string p0, "NOT_REG_SEARCHING"

    return-object p0

    :pswitch_4
    const-string p0, "HOME"

    return-object p0

    :pswitch_5
    const-string p0, "NOT_REG_NOT_SEARCHING"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
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

    if-eqz p1, :cond_4

    .line 286
    instance-of v2, p1, Landroid/telephony/NetworkRegistrationState;

    if-nez v2, :cond_1

    goto :goto_1

    .line 290
    :cond_1
    check-cast p1, Landroid/telephony/NetworkRegistrationState;

    .line 291
    iget v2, p0, Landroid/telephony/NetworkRegistrationState;->mTransportType:I

    iget v3, p1, Landroid/telephony/NetworkRegistrationState;->mTransportType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/telephony/NetworkRegistrationState;->mDomain:I

    iget v3, p1, Landroid/telephony/NetworkRegistrationState;->mDomain:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/telephony/NetworkRegistrationState;->mRegState:I

    iget v3, p1, Landroid/telephony/NetworkRegistrationState;->mRegState:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/telephony/NetworkRegistrationState;->mAccessNetworkTechnology:I

    iget v3, p1, Landroid/telephony/NetworkRegistrationState;->mAccessNetworkTechnology:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/telephony/NetworkRegistrationState;->mReasonForDenial:I

    iget v3, p1, Landroid/telephony/NetworkRegistrationState;->mReasonForDenial:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Landroid/telephony/NetworkRegistrationState;->mEmergencyOnly:Z

    iget-boolean v3, p1, Landroid/telephony/NetworkRegistrationState;->mEmergencyOnly:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    iget-object v3, p1, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    iget-object v3, p1, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    .line 298
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Landroid/telephony/NetworkRegistrationState;->mCellIdentity:Landroid/telephony/CellIdentity;

    iget-object v3, p1, Landroid/telephony/NetworkRegistrationState;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 299
    invoke-static {v2, v3}, Landroid/telephony/NetworkRegistrationState;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/telephony/NetworkRegistrationState;->mVoiceSpecificStates:Landroid/telephony/VoiceSpecificRegistrationStates;

    iget-object v3, p1, Landroid/telephony/NetworkRegistrationState;->mVoiceSpecificStates:Landroid/telephony/VoiceSpecificRegistrationStates;

    .line 300
    invoke-static {v2, v3}, Landroid/telephony/NetworkRegistrationState;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Landroid/telephony/NetworkRegistrationState;->mDataSpecificStates:Landroid/telephony/DataSpecificRegistrationStates;

    iget-object p1, p1, Landroid/telephony/NetworkRegistrationState;->mDataSpecificStates:Landroid/telephony/DataSpecificRegistrationStates;

    .line 301
    invoke-static {p0, p1}, Landroid/telephony/NetworkRegistrationState;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getAccessNetworkTechnology()I
    .locals 0

    .line 208
    iget p0, p0, Landroid/telephony/NetworkRegistrationState;->mAccessNetworkTechnology:I

    return p0
.end method

.method public getAvailableServices()[I
    .locals 0

    .line 202
    iget-object p0, p0, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    return-object p0
.end method

.method public getCellIdentity()Landroid/telephony/CellIdentity;
    .locals 0

    .line 222
    iget-object p0, p0, Landroid/telephony/NetworkRegistrationState;->mCellIdentity:Landroid/telephony/CellIdentity;

    return-object p0
.end method

.method public getDataSpecificStates()Landroid/telephony/DataSpecificRegistrationStates;
    .locals 0

    .line 238
    iget-object p0, p0, Landroid/telephony/NetworkRegistrationState;->mDataSpecificStates:Landroid/telephony/DataSpecificRegistrationStates;

    return-object p0
.end method

.method public getDomain()I
    .locals 0

    .line 185
    iget p0, p0, Landroid/telephony/NetworkRegistrationState;->mDomain:I

    return p0
.end method

.method public getReasonForDenial()I
    .locals 0

    .line 215
    iget p0, p0, Landroid/telephony/NetworkRegistrationState;->mReasonForDenial:I

    return p0
.end method

.method public getRegState()I
    .locals 0

    .line 191
    iget p0, p0, Landroid/telephony/NetworkRegistrationState;->mRegState:I

    return p0
.end method

.method public getTransportType()I
    .locals 0

    .line 180
    iget p0, p0, Landroid/telephony/NetworkRegistrationState;->mTransportType:I

    return p0
.end method

.method public getVoiceSpecificStates()Landroid/telephony/VoiceSpecificRegistrationStates;
    .locals 0

    .line 230
    iget-object p0, p0, Landroid/telephony/NetworkRegistrationState;->mVoiceSpecificStates:Landroid/telephony/VoiceSpecificRegistrationStates;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xa

    .line 277
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mTransportType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mDomain:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mRegState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mAccessNetworkTechnology:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mReasonForDenial:I

    .line 278
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/NetworkRegistrationState;->mEmergencyOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationState;->mCellIdentity:Landroid/telephony/CellIdentity;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationState;->mVoiceSpecificStates:Landroid/telephony/VoiceSpecificRegistrationStates;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/telephony/NetworkRegistrationState;->mDataSpecificStates:Landroid/telephony/DataSpecificRegistrationStates;

    const/16 v1, 0x9

    aput-object p0, v0, v1

    .line 277
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEmergencyEnabled()Z
    .locals 0

    .line 197
    iget-boolean p0, p0, Landroid/telephony/NetworkRegistrationState;->mEmergencyOnly:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkRegistrationState{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "transportType="

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mTransportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " domain="

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mDomain:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "CS"

    goto :goto_0

    :cond_0
    const-string v1, "PS"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " regState="

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mRegState:I

    invoke-static {v1}, Landroid/telephony/NetworkRegistrationState;->regStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " accessNetworkTechnology="

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mAccessNetworkTechnology:I

    .line 265
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reasonForDenial="

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mReasonForDenial:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " emergencyEnabled="

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/NetworkRegistrationState;->mEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " supportedServices="

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cellIdentity="

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationState;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " voiceSpecificStates="

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationState;->mVoiceSpecificStates:Landroid/telephony/VoiceSpecificRegistrationStates;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " dataSpecificStates="

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/telephony/NetworkRegistrationState;->mDataSpecificStates:Landroid/telephony/DataSpecificRegistrationStates;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 272
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 306
    iget p2, p0, Landroid/telephony/NetworkRegistrationState;->mTransportType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget p2, p0, Landroid/telephony/NetworkRegistrationState;->mDomain:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget p2, p0, Landroid/telephony/NetworkRegistrationState;->mRegState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget p2, p0, Landroid/telephony/NetworkRegistrationState;->mAccessNetworkTechnology:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget p2, p0, Landroid/telephony/NetworkRegistrationState;->mReasonForDenial:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-boolean p2, p0, Landroid/telephony/NetworkRegistrationState;->mEmergencyOnly:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 312
    iget-object p2, p0, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 313
    iget-object p2, p0, Landroid/telephony/NetworkRegistrationState;->mCellIdentity:Landroid/telephony/CellIdentity;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 314
    iget-object p2, p0, Landroid/telephony/NetworkRegistrationState;->mVoiceSpecificStates:Landroid/telephony/VoiceSpecificRegistrationStates;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 315
    iget-object p0, p0, Landroid/telephony/NetworkRegistrationState;->mDataSpecificStates:Landroid/telephony/DataSpecificRegistrationStates;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
