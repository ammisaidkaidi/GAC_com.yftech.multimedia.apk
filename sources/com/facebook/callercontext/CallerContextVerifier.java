package com.facebook.callercontext;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public interface CallerContextVerifier {
    void verifyCallerContext(@Nullable Object obj, boolean z);
}
