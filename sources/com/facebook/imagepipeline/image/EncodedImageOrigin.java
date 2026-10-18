package com.facebook.imagepipeline.image;

import com.facebook.infer.annotation.Nullsafe;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public enum EncodedImageOrigin {
    NOT_SET("not_set"),
    NETWORK("network"),
    DISK("disk"),
    ENCODED_MEM_CACHE("encoded_mem_cache");

    private final String mOrigin;

    EncodedImageOrigin(String str) {
        this.mOrigin = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.mOrigin;
    }
}
