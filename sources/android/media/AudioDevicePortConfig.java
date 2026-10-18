package android.media;

/* loaded from: /home/user/work/dex/classes.dex */
public class AudioDevicePortConfig extends AudioPortConfig {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioDevicePortConfig(AudioDevicePort audioDevicePort, int i, int i2, int i3, AudioGainConfig audioGainConfig) {
        super(audioDevicePort, i, i2, i3, audioGainConfig);
    }

    AudioDevicePortConfig(AudioDevicePortConfig audioDevicePortConfig) {
        this(audioDevicePortConfig.port(), audioDevicePortConfig.samplingRate(), audioDevicePortConfig.channelMask(), audioDevicePortConfig.format(), audioDevicePortConfig.gain());
    }

    @Override // android.media.AudioPortConfig
    public AudioDevicePort port() {
        return (AudioDevicePort) this.mPort;
    }
}
