package android.content.res;

/* loaded from: /home/user/work/dex/classes.dex */
public final class ResourceId {
    public static final int ID_NULL = 0;

    public static boolean isValid(int i) {
        return (i == -1 || ((-16777216) & i) == 0 || (i & 16711680) == 0) ? false : true;
    }
}
