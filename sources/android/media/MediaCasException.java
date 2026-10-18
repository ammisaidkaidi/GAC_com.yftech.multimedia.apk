package android.media;

/* loaded from: /home/user/work/dex/classes.dex */
public class MediaCasException extends Exception {
    private MediaCasException(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void throwExceptionIfNeeded(int i) throws MediaCasException {
        if (i == 0) {
            return;
        }
        if (i == 7) {
            throw new NotProvisionedException(null);
        }
        if (i == 8) {
            throw new ResourceBusyException(null);
        }
        if (i == 11) {
            throw new DeniedByServerException(null);
        }
        MediaCasStateException.throwExceptionIfNeeded(i);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class UnsupportedCasException extends MediaCasException {
        public UnsupportedCasException(String str) {
            super(str);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class NotProvisionedException extends MediaCasException {
        public NotProvisionedException(String str) {
            super(str);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class DeniedByServerException extends MediaCasException {
        public DeniedByServerException(String str) {
            super(str);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class ResourceBusyException extends MediaCasException {
        public ResourceBusyException(String str) {
            super(str);
        }
    }
}
