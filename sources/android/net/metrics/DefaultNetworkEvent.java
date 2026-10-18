package android.net.metrics;

import android.net.NetworkCapabilities;
import com.android.internal.util.BitUtils;
import java.util.StringJoiner;

/* loaded from: /home/user/work/dex/classes.dex */
public class DefaultNetworkEvent {
    public final long creationTimeMs;
    public long durationMs;
    public int finalScore;
    public int initialScore;
    public boolean ipv4;
    public boolean ipv6;
    public int netId = 0;
    public int previousTransports;
    public int transports;
    public long validatedMs;

    public DefaultNetworkEvent(long j) {
        this.creationTimeMs = j;
    }

    public void updateDuration(long j) {
        this.durationMs = j - this.creationTimeMs;
    }

    public String toString() {
        StringJoiner stringJoiner = new StringJoiner(", ", "DefaultNetworkEvent(", ")");
        stringJoiner.add("netId=" + this.netId);
        int[] unpackBits = BitUtils.unpackBits((long) this.transports);
        int length = unpackBits.length;
        for (int i = 0; i < length; i++) {
            stringJoiner.add(NetworkCapabilities.transportNameOf(unpackBits[i]));
        }
        stringJoiner.add("ip=" + ipSupport());
        if (this.initialScore > 0) {
            stringJoiner.add("initial_score=" + this.initialScore);
        }
        if (this.finalScore > 0) {
            stringJoiner.add("final_score=" + this.finalScore);
        }
        stringJoiner.add(String.format("duration=%.0fs", Double.valueOf(this.durationMs / 1000.0d)));
        stringJoiner.add(String.format("validation=%04.1f%%", Double.valueOf((this.validatedMs * 100.0d) / this.durationMs)));
        return stringJoiner.toString();
    }

    private String ipSupport() {
        return (this.ipv4 && this.ipv6) ? "IPv4v6" : this.ipv6 ? "IPv6" : this.ipv4 ? "IPv4" : "NONE";
    }
}
