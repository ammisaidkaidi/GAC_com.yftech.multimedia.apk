package com.android.internal.util.function.pooled;

import com.android.internal.util.FunctionalUtils;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface PooledRunnable extends PooledLambda, Runnable, FunctionalUtils.ThrowingRunnable {
    @Override // com.android.internal.util.function.pooled.PooledSupplier.OfInt, com.android.internal.util.function.pooled.PooledSupplier.OfLong, com.android.internal.util.function.pooled.PooledSupplier.OfDouble
    PooledRunnable recycleOnUse();
}
