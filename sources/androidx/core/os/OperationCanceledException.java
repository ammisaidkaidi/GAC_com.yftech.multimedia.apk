package androidx.core.os;

import androidx.annotation.Nullable;

/* loaded from: /home/user/work/dex/classes3.dex */
public class OperationCanceledException extends RuntimeException {
    public OperationCanceledException() {
        this(null);
    }

    public OperationCanceledException(@Nullable String str) {
        super(str == null ? "The operation has been canceled." : str);
    }
}
