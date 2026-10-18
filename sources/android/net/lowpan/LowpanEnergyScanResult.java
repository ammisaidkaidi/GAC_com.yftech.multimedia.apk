package android.net.lowpan;

/* loaded from: /home/user/work/dex/classes.dex */
public class LowpanEnergyScanResult {
    public static final int UNKNOWN = Integer.MAX_VALUE;
    private int mChannel = Integer.MAX_VALUE;
    private int mMaxRssi = Integer.MAX_VALUE;

    public int getChannel() {
        return this.mChannel;
    }

    public int getMaxRssi() {
        return this.mMaxRssi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setChannel(int i) {
        this.mChannel = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMaxRssi(int i) {
        this.mMaxRssi = i;
    }

    public String toString() {
        return "LowpanEnergyScanResult(channel: " + this.mChannel + ", maxRssi:" + this.mMaxRssi + ")";
    }
}
