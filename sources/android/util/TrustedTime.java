package android.util;

/* loaded from: /home/user/work/dex/classes2.dex */
public interface TrustedTime {
    long currentTimeMillis();

    boolean forceRefresh();

    long getCacheAge();

    long getCacheCertainty();

    boolean hasCache();
}
