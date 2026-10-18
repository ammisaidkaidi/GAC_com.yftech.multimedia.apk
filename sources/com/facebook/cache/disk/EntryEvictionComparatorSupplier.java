package com.facebook.cache.disk;

import com.facebook.infer.annotation.Nullsafe;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public interface EntryEvictionComparatorSupplier {
    EntryEvictionComparator get();
}
