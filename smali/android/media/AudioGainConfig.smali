.class public Landroid/media/AudioGainConfig;
.super Ljava/lang/Object;
.source "AudioGainConfig.java"


# instance fields
.field private final mChannelMask:I

.field mGain:Landroid/media/AudioGain;

.field private final mIndex:I

.field private final mMode:I

.field private final mRampDurationMs:I

.field private final mValues:[I


# direct methods
.method constructor <init>(ILandroid/media/AudioGain;II[II)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/media/AudioGainConfig;->mIndex:I

    .line 38
    iput-object p2, p0, Landroid/media/AudioGainConfig;->mGain:Landroid/media/AudioGain;

    .line 39
    iput p3, p0, Landroid/media/AudioGainConfig;->mMode:I

    .line 40
    iput p4, p0, Landroid/media/AudioGainConfig;->mChannelMask:I

    .line 41
    iput-object p5, p0, Landroid/media/AudioGainConfig;->mValues:[I

    .line 42
    iput p6, p0, Landroid/media/AudioGainConfig;->mRampDurationMs:I

    return-void
.end method


# virtual methods
.method public channelMask()I
    .locals 0

    .line 66
    iget p0, p0, Landroid/media/AudioGainConfig;->mChannelMask:I

    return p0
.end method

.method index()I
    .locals 0

    .line 50
    iget p0, p0, Landroid/media/AudioGainConfig;->mIndex:I

    return p0
.end method

.method public mode()I
    .locals 0

    .line 58
    iget p0, p0, Landroid/media/AudioGainConfig;->mMode:I

    return p0
.end method

.method public rampDurationMs()I
    .locals 0

    .line 82
    iget p0, p0, Landroid/media/AudioGainConfig;->mRampDurationMs:I

    return p0
.end method

.method public values()[I
    .locals 0

    .line 74
    iget-object p0, p0, Landroid/media/AudioGainConfig;->mValues:[I

    return-object p0
.end method
