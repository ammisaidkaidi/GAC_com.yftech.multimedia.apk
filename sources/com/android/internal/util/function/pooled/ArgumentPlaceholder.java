package com.android.internal.util.function.pooled;

/* loaded from: /home/user/work/dex/classes3.dex */
public final class ArgumentPlaceholder<R> {
    static final ArgumentPlaceholder<?> INSTANCE = new ArgumentPlaceholder<>();

    public String toString() {
        return "_";
    }

    private ArgumentPlaceholder() {
    }
}
