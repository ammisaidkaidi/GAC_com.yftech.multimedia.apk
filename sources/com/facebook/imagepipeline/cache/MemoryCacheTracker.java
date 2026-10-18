package com.facebook.imagepipeline.cache;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface MemoryCacheTracker<K> {
    void onCacheHit(K k);

    void onCacheMiss(K k);

    void onCachePut(K k);
}
