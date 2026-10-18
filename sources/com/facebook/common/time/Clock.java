package com.facebook.common.time;

import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: /home/user/work/dex/classes3.dex */
public interface Clock {
    public static final long MAX_TIME = Long.MAX_VALUE;

    long now();
}
