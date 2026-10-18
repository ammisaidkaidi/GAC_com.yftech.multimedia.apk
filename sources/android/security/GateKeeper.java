package android.security;

import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.service.gatekeeper.IGateKeeperService;

/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class GateKeeper {
    public static final long INVALID_SECURE_USER_ID = 0;

    private GateKeeper() {
    }

    public static IGateKeeperService getService() {
        IGateKeeperService asInterface = IGateKeeperService.Stub.asInterface(ServiceManager.getService("android.service.gatekeeper.IGateKeeperService"));
        if (asInterface != null) {
            return asInterface;
        }
        throw new IllegalStateException("Gatekeeper service not available");
    }

    public static long getSecureUserId() throws IllegalStateException {
        try {
            return getService().getSecureUserId(UserHandle.myUserId());
        } catch (RemoteException e) {
            throw new IllegalStateException("Failed to obtain secure user ID from gatekeeper", e);
        }
    }
}
