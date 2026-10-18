package com.facebook.imagepipeline.common;

import com.facebook.infer.annotation.Nullsafe;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public class TooManyBitmapsException extends RuntimeException {
    public TooManyBitmapsException() {
    }

    public TooManyBitmapsException(String str) {
        super(str);
    }
}
