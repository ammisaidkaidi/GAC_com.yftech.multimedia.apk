.class public Landroid/media/AudioDevicePortConfig;
.super Landroid/media/AudioPortConfig;
.source "AudioDevicePortConfig.java"


# direct methods
.method constructor <init>(Landroid/media/AudioDevicePort;IIILandroid/media/AudioGainConfig;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioPortConfig;-><init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V

    return-void
.end method

.method constructor <init>(Landroid/media/AudioDevicePortConfig;)V
    .locals 6

    .line 35
    invoke-virtual {p1}, Landroid/media/AudioDevicePortConfig;->port()Landroid/media/AudioDevicePort;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/AudioDevicePortConfig;->samplingRate()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/AudioDevicePortConfig;->channelMask()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/AudioDevicePortConfig;->format()I

    move-result v4

    .line 36
    invoke-virtual {p1}, Landroid/media/AudioDevicePortConfig;->gain()Landroid/media/AudioGainConfig;

    move-result-object v5

    move-object v0, p0

    .line 35
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioDevicePortConfig;-><init>(Landroid/media/AudioDevicePort;IIILandroid/media/AudioGainConfig;)V

    return-void
.end method


# virtual methods
.method public port()Landroid/media/AudioDevicePort;
    .locals 0

    .line 43
    iget-object p0, p0, Landroid/media/AudioDevicePortConfig;->mPort:Landroid/media/AudioPort;

    check-cast p0, Landroid/media/AudioDevicePort;

    return-object p0
.end method

.method public bridge synthetic port()Landroid/media/AudioPort;
    .locals 0

    .line 28
    invoke-virtual {p0}, Landroid/media/AudioDevicePortConfig;->port()Landroid/media/AudioDevicePort;

    move-result-object p0

    return-object p0
.end method
