package android.app.timezone;

/* loaded from: /home/user/work/dex/classes.dex */
final class Utils {
    private Utils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int validateVersion(String str, int i) {
        if (i >= 0 && i <= 999) {
            return i;
        }
        throw new IllegalArgumentException("Invalid " + str + " version=" + i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String validateRulesVersion(String str, String str2) {
        validateNotNull(str, str2);
        if (!str2.isEmpty()) {
            return str2;
        }
        throw new IllegalArgumentException(str + " must not be empty");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T validateNotNull(String str, T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str + " == null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T validateConditionalNull(boolean z, String str, T t) {
        if (z) {
            return (T) validateNotNull(str, t);
        }
        return (T) validateNull(str, t);
    }

    static <T> T validateNull(String str, T t) {
        if (t == null) {
            return null;
        }
        throw new IllegalArgumentException(str + " != null");
    }
}
