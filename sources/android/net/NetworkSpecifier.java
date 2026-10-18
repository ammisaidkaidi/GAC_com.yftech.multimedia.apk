package android.net;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class NetworkSpecifier {
    public void assertValidFromUid(int i) {
    }

    public NetworkSpecifier redact() {
        return this;
    }

    public abstract boolean satisfiedBy(NetworkSpecifier networkSpecifier);
}
