package com.android.internal.util;

/* loaded from: /home/user/work/dex/classes3.dex */
public class RingBufferIndices {
    private final int mCapacity;
    private int mSize;
    private int mStart;

    public RingBufferIndices(int i) {
        this.mCapacity = i;
    }

    public int add() {
        if (this.mSize < this.mCapacity) {
            int i = this.mSize;
            this.mSize++;
            return i;
        }
        int i2 = this.mStart;
        this.mStart++;
        if (this.mStart == this.mCapacity) {
            this.mStart = 0;
        }
        return i2;
    }

    public void clear() {
        this.mStart = 0;
        this.mSize = 0;
    }

    public int size() {
        return this.mSize;
    }

    public int indexOf(int i) {
        int i2 = this.mStart + i;
        return i2 >= this.mCapacity ? i2 - this.mCapacity : i2;
    }
}
