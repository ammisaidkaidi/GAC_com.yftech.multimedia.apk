package com.android.internal.textservice;

import android.util.SparseIntArray;
import com.android.internal.annotations.VisibleForTesting;
import java.util.function.IntUnaryOperator;

@VisibleForTesting
/* loaded from: /home/user/work/dex/classes3.dex */
public final class LazyIntToIntMap {
    private final SparseIntArray mMap = new SparseIntArray();
    private final IntUnaryOperator mMappingFunction;

    public LazyIntToIntMap(IntUnaryOperator intUnaryOperator) {
        this.mMappingFunction = intUnaryOperator;
    }

    public void delete(int i) {
        this.mMap.delete(i);
    }

    public int get(int i) {
        int indexOfKey = this.mMap.indexOfKey(i);
        if (indexOfKey >= 0) {
            return this.mMap.valueAt(indexOfKey);
        }
        int applyAsInt = this.mMappingFunction.applyAsInt(i);
        this.mMap.append(i, applyAsInt);
        return applyAsInt;
    }
}
