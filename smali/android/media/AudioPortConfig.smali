.class public Landroid/media/AudioPortConfig;
.super Ljava/lang/Object;
.source "AudioPortConfig.java"


# static fields
.field static final CHANNEL_MASK:I = 0x2

.field static final FORMAT:I = 0x4

.field static final GAIN:I = 0x8

.field static final SAMPLE_RATE:I = 0x1


# instance fields
.field private final mChannelMask:I

.field mConfigMask:I

.field private final mFormat:I

.field private final mGain:Landroid/media/AudioGainConfig;

.field final mPort:Landroid/media/AudioPort;

.field private final mSamplingRate:I


# direct methods
.method constructor <init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/media/AudioPortConfig;->mPort:Landroid/media/AudioPort;

    .line 51
    iput p2, p0, Landroid/media/AudioPortConfig;->mSamplingRate:I

    .line 52
    iput p3, p0, Landroid/media/AudioPortConfig;->mChannelMask:I

    .line 53
    iput p4, p0, Landroid/media/AudioPortConfig;->mFormat:I

    .line 54
    iput-object p5, p0, Landroid/media/AudioPortConfig;->mGain:Landroid/media/AudioGainConfig;

    const/4 p1, 0x0

    .line 55
    iput p1, p0, Landroid/media/AudioPortConfig;->mConfigMask:I

    return-void
.end method


# virtual methods
.method public channelMask()I
    .locals 0

    .line 76
    iget p0, p0, Landroid/media/AudioPortConfig;->mChannelMask:I

    return p0
.end method

.method public format()I
    .locals 0

    .line 83
    iget p0, p0, Landroid/media/AudioPortConfig;->mFormat:I

    return p0
.end method

.method public gain()Landroid/media/AudioGainConfig;
    .locals 0

    .line 91
    iget-object p0, p0, Landroid/media/AudioPortConfig;->mGain:Landroid/media/AudioGainConfig;

    return-object p0
.end method

.method public port()Landroid/media/AudioPort;
    .locals 0

    .line 62
    iget-object p0, p0, Landroid/media/AudioPortConfig;->mPort:Landroid/media/AudioPort;

    return-object p0
.end method

.method public samplingRate()I
    .locals 0

    .line 69
    iget p0, p0, Landroid/media/AudioPortConfig;->mSamplingRate:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mPort:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/AudioPortConfig;->mPort:Landroid/media/AudioPort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSamplingRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/AudioPortConfig;->mSamplingRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChannelMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/AudioPortConfig;->mChannelMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/AudioPortConfig;->mFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/AudioPortConfig;->mGain:Landroid/media/AudioGainConfig;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
