package com.facebook.common.time;

import com.facebook.common.internal.DoNotStrip;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: /home/user/work/dex/classes3.dex */
public interface MonotonicNanoClock {
    @DoNotStrip
    long nowNanos();
}
