package com.facebook.imagepipeline.common;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public enum Priority {
    LOW,
    MEDIUM,
    HIGH;

    @Nullable
    public static Priority getHigherPriority(@Nullable Priority priority, @Nullable Priority priority2) {
        return priority == null ? priority2 : (priority2 != null && priority.ordinal() <= priority2.ordinal()) ? priority2 : priority;
    }
}
