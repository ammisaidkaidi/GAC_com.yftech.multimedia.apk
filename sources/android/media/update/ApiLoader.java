package android.media.update;

/* loaded from: /home/user/work/dex/classes.dex */
public final class ApiLoader {
    private ApiLoader() {
    }

    public static StaticProvider getProvider() {
        throw new RuntimeException("Use MediaSession/Browser instead of hidden MediaSession2/Browser2 APIs.");
    }
}
