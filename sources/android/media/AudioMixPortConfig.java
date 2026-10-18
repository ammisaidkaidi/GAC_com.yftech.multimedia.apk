package android.media;

/* loaded from: /home/user/work/dex/classes.dex */
public class AudioMixPortConfig extends AudioPortConfig {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioMixPortConfig(AudioMixPort audioMixPort, int i, int i2, int i3, AudioGainConfig audioGainConfig) {
        super(audioMixPort, i, i2, i3, audioGainConfig);
    }

    @Override // android.media.AudioPortConfig
    public AudioMixPort port() {
        return (AudioMixPort) this.mPort;
    }
}
