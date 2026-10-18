package android.net.lowpan;

import android.os.ServiceSpecificException;
import android.util.AndroidException;

/* loaded from: /home/user/work/dex/classes.dex */
public class LowpanException extends AndroidException {
    public LowpanException() {
    }

    public LowpanException(String str) {
        super(str);
    }

    public LowpanException(String str, Throwable th) {
        super(str, th);
    }

    public LowpanException(Exception exc) {
        super(exc);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static LowpanException rethrowFromServiceSpecificException(ServiceSpecificException serviceSpecificException) throws LowpanException {
        switch (serviceSpecificException.errorCode) {
            case 2:
                throw new LowpanRuntimeException(serviceSpecificException.getMessage() != null ? serviceSpecificException.getMessage() : "Invalid argument", serviceSpecificException);
            case 3:
                throw new InterfaceDisabledException((Exception) serviceSpecificException);
            case 4:
                throw new WrongStateException((Exception) serviceSpecificException);
            case 5:
            case 6:
            case 8:
            case 9:
            default:
                throw new LowpanRuntimeException((Exception) serviceSpecificException);
            case 7:
                throw new LowpanRuntimeException(serviceSpecificException.getMessage() != null ? serviceSpecificException.getMessage() : "NCP problem", serviceSpecificException);
            case 10:
                throw new OperationCanceledException((Exception) serviceSpecificException);
            case 11:
                throw new LowpanException(serviceSpecificException.getMessage() != null ? serviceSpecificException.getMessage() : "Feature not supported", serviceSpecificException);
            case 12:
                throw new JoinFailedException((Exception) serviceSpecificException);
            case 13:
                throw new JoinFailedAtScanException((Exception) serviceSpecificException);
            case 14:
                throw new JoinFailedAtAuthException((Exception) serviceSpecificException);
            case 15:
                throw new NetworkAlreadyExistsException((Exception) serviceSpecificException);
        }
    }
}
