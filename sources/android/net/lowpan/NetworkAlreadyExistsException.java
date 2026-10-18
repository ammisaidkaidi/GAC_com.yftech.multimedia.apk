package android.net.lowpan;

/* loaded from: /home/user/work/dex/classes.dex */
public class NetworkAlreadyExistsException extends LowpanException {
    public NetworkAlreadyExistsException() {
    }

    public NetworkAlreadyExistsException(String str) {
        super(str, null);
    }

    public NetworkAlreadyExistsException(String str, Throwable th) {
        super(str, th);
    }

    public NetworkAlreadyExistsException(Exception exc) {
        super(exc);
    }
}
