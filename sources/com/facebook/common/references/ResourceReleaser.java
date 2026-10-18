package com.facebook.common.references;

import com.facebook.infer.annotation.Nullsafe;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public interface ResourceReleaser<T> {
    void release(T t);
}
