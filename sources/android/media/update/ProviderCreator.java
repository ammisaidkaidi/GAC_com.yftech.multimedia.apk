package android.media.update;

@FunctionalInterface
/* loaded from: /home/user/work/dex/classes.dex */
public interface ProviderCreator<T, U> {
    U createProvider(T t);
}
