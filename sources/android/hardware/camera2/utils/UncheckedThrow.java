package android.hardware.camera2.utils;

/* loaded from: /home/user/work/dex/classes.dex */
public class UncheckedThrow {
    public static void throwAnyException(Exception exc) {
        throwAnyImpl(exc);
    }

    public static void throwAnyException(Throwable th) {
        throwAnyImpl(th);
    }

    private static <T extends Throwable> void throwAnyImpl(Throwable th) throws Throwable {
        throw th;
    }
}
