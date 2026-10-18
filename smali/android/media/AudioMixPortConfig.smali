.class public Landroid/media/AudioMixPortConfig;
.super Landroid/media/AudioPortConfig;
.source "AudioMixPortConfig.java"


# direct methods
.method constructor <init>(Landroid/media/AudioMixPort;IIILandroid/media/AudioGainConfig;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioPortConfig;-><init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V

    return-void
.end method


# virtual methods
.method public port()Landroid/media/AudioMixPort;
    .locals 0

    .line 38
    iget-object p0, p0, Landroid/media/AudioMixPortConfig;->mPort:Landroid/media/AudioPort;

    check-cast p0, Landroid/media/AudioMixPort;

    return-object p0
.end method

.method public bridge synthetic port()Landroid/media/AudioPort;
    .locals 0

    .line 27
    invoke-virtual {p0}, Landroid/media/AudioMixPortConfig;->port()Landroid/media/AudioMixPort;

    move-result-object p0

    return-object p0
.end method
