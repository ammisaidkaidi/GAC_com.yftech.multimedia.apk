package com.alibaba.android.vlayout;

import android.os.Build;
import androidx.annotation.NonNull;
import java.lang.Comparable;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes3.dex */
public final class Range<T extends Comparable<? super T>> {
    private final T mLower;
    private final T mUpper;

    public Range(@NonNull T t, @NonNull T t2) {
        if (t == null) {
            throw new IllegalArgumentException("lower must not be null");
        }
        if (t2 == null) {
            throw new IllegalArgumentException("upper must not be null");
        }
        this.mLower = t;
        this.mUpper = t2;
        if (t.compareTo(t2) > 0) {
            throw new IllegalArgumentException("lower must be less than or equal to upper");
        }
    }

    public static <T extends Comparable<? super T>> Range<T> create(T t, T t2) {
        return new Range<>(t, t2);
    }

    public T getLower() {
        return this.mLower;
    }

    public T getUpper() {
        return this.mUpper;
    }

    public boolean contains(@NonNull T t) {
        if (t != null) {
            return (t.compareTo(this.mLower) >= 0) && (t.compareTo(this.mUpper) <= 0);
        }
        throw new IllegalArgumentException("value must not be null");
    }

    public boolean contains(@NonNull Range<T> range) {
        if (range != null) {
            return (range.mLower.compareTo(this.mLower) >= 0) && (range.mUpper.compareTo(this.mUpper) <= 0);
        }
        throw new IllegalArgumentException("value must not be null");
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Range)) {
            return false;
        }
        Range range = (Range) obj;
        return this.mLower.equals(range.mLower) && this.mUpper.equals(range.mUpper);
    }

    public T clamp(T t) {
        if (t == null) {
            throw new IllegalArgumentException("value must not be null");
        }
        if (t.compareTo(this.mLower) < 0) {
            return this.mLower;
        }
        return t.compareTo(this.mUpper) > 0 ? this.mUpper : t;
    }

    public Range<T> intersect(Range<T> range) {
        if (range == null) {
            throw new IllegalArgumentException("range must not be null");
        }
        int compareTo = range.mLower.compareTo(this.mLower);
        int compareTo2 = range.mUpper.compareTo(this.mUpper);
        if (compareTo <= 0 && compareTo2 >= 0) {
            return this;
        }
        if (compareTo < 0 || compareTo2 > 0) {
            return create(compareTo <= 0 ? this.mLower : range.mLower, compareTo2 >= 0 ? this.mUpper : range.mUpper);
        }
        return range;
    }

    public Range<T> intersect(T t, T t2) {
        if (t == null) {
            throw new IllegalArgumentException("lower must not be null");
        }
        if (t2 == null) {
            throw new IllegalArgumentException("upper must not be null");
        }
        int compareTo = t.compareTo(this.mLower);
        int compareTo2 = t2.compareTo(this.mUpper);
        if (compareTo <= 0 && compareTo2 >= 0) {
            return this;
        }
        if (compareTo <= 0) {
            t = this.mLower;
        }
        if (compareTo2 >= 0) {
            t2 = this.mUpper;
        }
        return create(t, t2);
    }

    public Range<T> extend(Range<T> range) {
        if (range == null) {
            throw new IllegalArgumentException("range must not be null");
        }
        int compareTo = range.mLower.compareTo(this.mLower);
        int compareTo2 = range.mUpper.compareTo(this.mUpper);
        if (compareTo <= 0 && compareTo2 >= 0) {
            return range;
        }
        if (compareTo < 0 || compareTo2 > 0) {
            return create(compareTo >= 0 ? this.mLower : range.mLower, compareTo2 <= 0 ? this.mUpper : range.mUpper);
        }
        return this;
    }

    public Range<T> extend(T t, T t2) {
        if (t == null) {
            throw new IllegalArgumentException("lower must not be null");
        }
        if (t2 == null) {
            throw new IllegalArgumentException("upper must not be null");
        }
        int compareTo = t.compareTo(this.mLower);
        int compareTo2 = t2.compareTo(this.mUpper);
        if (compareTo >= 0 && compareTo2 <= 0) {
            return this;
        }
        if (compareTo >= 0) {
            t = this.mLower;
        }
        if (compareTo2 <= 0) {
            t2 = this.mUpper;
        }
        return create(t, t2);
    }

    public Range<T> extend(T t) {
        if (t == null) {
            throw new IllegalArgumentException("value must not be null");
        }
        return extend(t, t);
    }

    public String toString() {
        return String.format("[%s, %s]", this.mLower, this.mUpper);
    }

    public int hashCode() {
        return Build.VERSION.SDK_INT >= 19 ? Objects.hash(this.mLower, this.mUpper) : Arrays.hashCode(new Object[]{this.mLower, this.mUpper});
    }
}
