.class public final Landroid/media/tv/TvTrackInfo;
.super Ljava/lang/Object;
.source "TvTrackInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvTrackInfo$Builder;,
        Landroid/media/tv/TvTrackInfo$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_AUDIO:I = 0x0

.field public static final TYPE_SUBTITLE:I = 0x2

.field public static final TYPE_VIDEO:I = 0x1


# instance fields
.field private final mAudioChannelCount:I

.field private final mAudioSampleRate:I

.field private final mDescription:Ljava/lang/CharSequence;

.field private final mExtra:Landroid/os/Bundle;

.field private final mId:Ljava/lang/String;

.field private final mLanguage:Ljava/lang/String;

.field private final mType:I

.field private final mVideoActiveFormatDescription:B

.field private final mVideoFrameRate:F

.field private final mVideoHeight:I

.field private final mVideoPixelAspectRatio:F

.field private final mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 295
    new-instance v0, Landroid/media/tv/TvTrackInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvTrackInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIIIFFBLandroid/os/Bundle;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    .line 76
    iput-object p2, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    .line 79
    iput p5, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    .line 80
    iput p6, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    .line 81
    iput p7, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    .line 82
    iput p8, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    .line 83
    iput p9, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    .line 84
    iput p10, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    .line 85
    iput-byte p11, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    .line 86
    iput-object p12, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIIIFFBLandroid/os/Bundle;Landroid/media/tv/TvTrackInfo$1;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p12}, Landroid/media/tv/TvTrackInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIIIFFBLandroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/tv/TvTrackInfo$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/media/tv/TvTrackInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 267
    :cond_0
    instance-of v1, p1, Landroid/media/tv/TvTrackInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 271
    :cond_1
    check-cast p1, Landroid/media/tv/TvTrackInfo;

    .line 272
    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    iget v3, p1, Landroid/media/tv/TvTrackInfo;->mType:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    .line 274
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    .line 275
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    .line 276
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v1, :cond_2

    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    iget v3, p1, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    if-ne v1, v3, :cond_3

    iget p0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    iget p1, p1, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-ne v1, v0, :cond_4

    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    iget v3, p1, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    iget v3, p1, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    iget v3, p1, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    sub-float/2addr v1, v3

    .line 285
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v3, v1

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, v3, v5

    if-gez v1, :cond_3

    iget p0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    iget p1, p1, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    sub-float/2addr p0, p1

    .line 286
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    cmpg-double p0, p0, v5

    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :cond_4
    :goto_0
    return v0
.end method

.method public final getAudioChannelCount()I
    .locals 1

    .line 141
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v0, :cond_0

    .line 144
    iget p0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    return p0

    .line 142
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not an audio track"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAudioSampleRate()I
    .locals 1

    .line 153
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v0, :cond_0

    .line 156
    iget p0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    return p0

    .line 154
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not an audio track"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 132
    iget-object p0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getExtra()Landroid/os/Bundle;
    .locals 0

    .line 231
    iget-object p0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 0

    .line 125
    iget-object p0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    .line 110
    iget p0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    return p0
.end method

.method public final getVideoActiveFormatDescription()B
    .locals 2

    .line 221
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 224
    iget-byte p0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    return p0

    .line 222
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not a video track"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getVideoFrameRate()F
    .locals 2

    .line 192
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 195
    iget p0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    return p0

    .line 193
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not a video track"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getVideoHeight()I
    .locals 2

    .line 179
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 182
    iget p0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    return p0

    .line 180
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not a video track"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getVideoPixelAspectRatio()F
    .locals 2

    .line 205
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 208
    iget p0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    return p0

    .line 206
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not a video track"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getVideoWidth()I
    .locals 2

    .line 166
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 169
    iget p0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    return p0

    .line 167
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not a video track"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 0

    .line 292
    iget-object p0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 247
    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget-object p2, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object p2, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object p2, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 256
    iget p2, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 257
    iget-byte p2, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 258
    iget-object p0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
