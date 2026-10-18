package com.android.internal.util.function.pooled;

import java.util.function.Consumer;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface PooledConsumer<T> extends PooledLambda, Consumer<T> {
    PooledConsumer<T> recycleOnUse();
}
