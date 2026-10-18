package com.android.internal.os;

import java.util.HashMap;

/* loaded from: /home/user/work/dex/classes3.dex */
public class KernelWakelockStats extends HashMap<String, Entry> {
    int kernelWakelockVersion;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class Entry {
        public int mCount;
        public long mTotalTime;
        public int mVersion;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Entry(int i, long j, int i2) {
            this.mCount = i;
            this.mTotalTime = j;
            this.mVersion = i2;
        }
    }
}
