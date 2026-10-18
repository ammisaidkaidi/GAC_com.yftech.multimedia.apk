.class public Landroid/telecom/VideoProfile;
.super Ljava/lang/Object;
.source "VideoProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/VideoProfile$CameraCapabilities;,
        Landroid/telecom/VideoProfile$VideoState;,
        Landroid/telecom/VideoProfile$VideoQuality;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/VideoProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUALITY_DEFAULT:I = 0x4

.field public static final QUALITY_HIGH:I = 0x1

.field public static final QUALITY_LOW:I = 0x3

.field public static final QUALITY_MEDIUM:I = 0x2

.field public static final QUALITY_UNKNOWN:I = 0x0

.field public static final STATE_AUDIO_ONLY:I = 0x0

.field public static final STATE_BIDIRECTIONAL:I = 0x3

.field public static final STATE_PAUSED:I = 0x4

.field public static final STATE_RX_ENABLED:I = 0x2

.field public static final STATE_TX_ENABLED:I = 0x1


# instance fields
.field private final mQuality:I

.field private final mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    new-instance v0, Landroid/telecom/VideoProfile$1;

    invoke-direct {v0}, Landroid/telecom/VideoProfile$1;-><init>()V

    sput-object v0, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x4

    .line 130
    invoke-direct {p0, p1, v0}, Landroid/telecom/VideoProfile;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p1, p0, Landroid/telecom/VideoProfile;->mVideoState:I

    .line 141
    iput p2, p0, Landroid/telecom/VideoProfile;->mQuality:I

    return-void
.end method

.method private static hasState(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAudioOnly(I)Z
    .locals 2

    const/4 v0, 0x1

    .line 268
    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 269
    invoke-static {p0, v1}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBidirectional(I)Z
    .locals 1

    const/4 v0, 0x3

    .line 311
    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result p0

    return p0
.end method

.method public static isPaused(I)Z
    .locals 1

    const/4 v0, 0x4

    .line 321
    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result p0

    return p0
.end method

.method public static isReceptionEnabled(I)Z
    .locals 1

    const/4 v0, 0x2

    .line 301
    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result p0

    return p0
.end method

.method public static isTransmissionEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 291
    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result p0

    return p0
.end method

.method public static isVideo(I)Z
    .locals 2

    const/4 v0, 0x1

    .line 279
    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 280
    invoke-static {p0, v1}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 281
    invoke-static {p0, v1}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static videoStateToString(I)Ljava/lang/String;
    .locals 2

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio"

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const-string p0, " Only"

    .line 240
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 242
    :cond_0
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " Tx"

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_1
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " Rx"

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_2
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, " Pause"

    .line 251
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getQuality()I
    .locals 0

    .line 164
    iget p0, p0, Landroid/telecom/VideoProfile;->mQuality:I

    return p0
.end method

.method public getVideoState()I
    .locals 0

    .line 154
    iget p0, p0, Landroid/telecom/VideoProfile;->mVideoState:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VideoProfile videoState = "

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget v1, p0, Landroid/telecom/VideoProfile;->mVideoState:I

    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " videoQuality = "

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget p0, p0, Landroid/telecom/VideoProfile;->mQuality:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 214
    iget p2, p0, Landroid/telecom/VideoProfile;->mVideoState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget p0, p0, Landroid/telecom/VideoProfile;->mQuality:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
