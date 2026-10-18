package android.app.usage;

import android.util.LongSparseArray;
import android.util.Slog;

/* loaded from: /home/user/work/dex/classes.dex */
public class TimeSparseArray<E> extends LongSparseArray<E> {
    private static final String TAG = "TimeSparseArray";
    private boolean mWtfReported;

    public int closestIndexOnOrAfter(long j) {
        int size = size();
        int i = size - 1;
        int i2 = 0;
        long j2 = -1;
        int i3 = -1;
        while (i2 <= i) {
            i3 = i2 + ((i - i2) / 2);
            j2 = keyAt(i3);
            if (j > j2) {
                i2 = i3 + 1;
            } else {
                if (j >= j2) {
                    return i3;
                }
                i = i3 - 1;
            }
        }
        if (j < j2) {
            return i3;
        }
        if (j <= j2 || i2 >= size) {
            return -1;
        }
        return i2;
    }

    @Override // android.util.LongSparseArray
    public void put(long j, E e) {
        if (indexOfKey(j) >= 0 && !this.mWtfReported) {
            Slog.wtf(TAG, "Overwriting value " + get(j) + " by " + e);
            this.mWtfReported = true;
        }
        super.put(j, e);
    }

    public int closestIndexOnOrBefore(long j) {
        int closestIndexOnOrAfter = closestIndexOnOrAfter(j);
        if (closestIndexOnOrAfter < 0) {
            return size() - 1;
        }
        return keyAt(closestIndexOnOrAfter) == j ? closestIndexOnOrAfter : closestIndexOnOrAfter - 1;
    }
}
