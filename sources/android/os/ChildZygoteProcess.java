package android.os;

import android.net.LocalSocketAddress;

/* loaded from: /home/user/work/dex/classes2.dex */
public class ChildZygoteProcess extends ZygoteProcess {
    private final int mPid;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChildZygoteProcess(LocalSocketAddress localSocketAddress, int i) {
        super(localSocketAddress, (LocalSocketAddress) null);
        this.mPid = i;
    }

    public int getPid() {
        return this.mPid;
    }
}
