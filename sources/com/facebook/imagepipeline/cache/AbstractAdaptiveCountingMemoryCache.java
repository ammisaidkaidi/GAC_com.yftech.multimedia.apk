package com.facebook.imagepipeline.cache;

import android.graphics.Bitmap;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableList;
import com.facebook.common.internal.Objects;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Predicate;
import com.facebook.common.internal.Supplier;
import com.facebook.common.logging.FLog;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.references.ResourceReleaser;
import com.facebook.imagepipeline.cache.CountingMemoryCache;
import com.facebook.imagepipeline.cache.MemoryCache;
import com.facebook.imagepipeline.common.BytesRange;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public abstract class AbstractAdaptiveCountingMemoryCache<K, V> implements CountingMemoryCache<K, V> {
    static final int DEFAULT_ADAPTIVE_RATE_PROMIL = 10;
    static final int DEFAULT_LFU_FRACTION_PROMIL = 500;
    static final int MAX_FRACTION_PROMIL = 900;

    @VisibleForTesting
    static final int MIN_FRACTION_PROMIL = 100;
    private static final String TAG = "AbstractArcCountingMemoryCache";
    static final int TOTAL_PROMIL = 1000;

    @GuardedBy("this")
    @VisibleForTesting
    final int mAdaptiveRatePromil;
    private final MemoryCache.CacheTrimStrategy mCacheTrimStrategy;

    @GuardedBy("this")
    @VisibleForTesting
    final CountingLruMap<K, Entry<K, V>> mCachedEntries;
    private final int mFrequentlyUsedThreshold;

    @GuardedBy("this")
    @VisibleForTesting
    final int mGhostListMaxSize;

    @GuardedBy("this")
    @VisibleForTesting
    int mLFUFractionPromil;

    @GuardedBy("this")
    private long mLastCacheParamsCheck;

    @GuardedBy("this")
    @VisibleForTesting
    final CountingLruMap<K, Entry<K, V>> mLeastFrequentlyUsedExclusiveEntries;

    @GuardedBy("this")
    @VisibleForTesting
    final AbstractAdaptiveCountingMemoryCache<K, V>.IntMapArrayList<K> mLeastFrequentlyUsedKeysGhostList;

    @GuardedBy("this")
    protected MemoryCacheParams mMemoryCacheParams;
    private final Supplier<MemoryCacheParams> mMemoryCacheParamsSupplier;

    @GuardedBy("this")
    @VisibleForTesting
    final CountingLruMap<K, Entry<K, V>> mMostFrequentlyUsedExclusiveEntries;

    @GuardedBy("this")
    @VisibleForTesting
    final ArrayList<K> mMostFrequentlyUsedKeysGhostList;
    private final ValueDescriptor<V> mValueDescriptor;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public enum ArrayListType {
        LFU,
        MFU
    }

    protected abstract void logIllegalAdaptiveRate();

    protected abstract void logIllegalLfuFraction();

    public AbstractAdaptiveCountingMemoryCache(Supplier<MemoryCacheParams> supplier, MemoryCache.CacheTrimStrategy cacheTrimStrategy, ValueDescriptor<V> valueDescriptor, int i, int i2, int i3, int i4) {
        FLog.d(TAG, "Create Adaptive Replacement Cache");
        this.mValueDescriptor = valueDescriptor;
        this.mLeastFrequentlyUsedExclusiveEntries = new CountingLruMap<>(wrapValueDescriptor(valueDescriptor));
        this.mMostFrequentlyUsedExclusiveEntries = new CountingLruMap<>(wrapValueDescriptor(valueDescriptor));
        this.mCachedEntries = new CountingLruMap<>(wrapValueDescriptor(valueDescriptor));
        this.mCacheTrimStrategy = cacheTrimStrategy;
        this.mMemoryCacheParamsSupplier = supplier;
        this.mMemoryCacheParams = (MemoryCacheParams) Preconditions.checkNotNull(this.mMemoryCacheParamsSupplier.get(), "mMemoryCacheParamsSupplier returned null");
        this.mLastCacheParamsCheck = SystemClock.uptimeMillis();
        this.mFrequentlyUsedThreshold = i2;
        this.mGhostListMaxSize = i3;
        this.mLeastFrequentlyUsedKeysGhostList = new IntMapArrayList<>(this.mGhostListMaxSize);
        this.mMostFrequentlyUsedKeysGhostList = new ArrayList<>(this.mGhostListMaxSize);
        if (i4 < 100 || i4 > 900) {
            this.mLFUFractionPromil = 500;
            logIllegalLfuFraction();
        } else {
            this.mLFUFractionPromil = i4;
        }
        if (i <= 0 || i >= 1000) {
            this.mAdaptiveRatePromil = 10;
            logIllegalAdaptiveRate();
        } else {
            this.mAdaptiveRatePromil = i;
        }
    }

    private ValueDescriptor<Entry<K, V>> wrapValueDescriptor(final ValueDescriptor<V> valueDescriptor) {
        return new ValueDescriptor<Entry<K, V>>() { // from class: com.facebook.imagepipeline.cache.AbstractAdaptiveCountingMemoryCache.1
            @Override // com.facebook.imagepipeline.cache.ValueDescriptor
            public int getSizeInBytes(Entry<K, V> entry) {
                return valueDescriptor.getSizeInBytes(entry.valueRef.get());
            }
        };
    }

    @Override // com.facebook.imagepipeline.cache.MemoryCache
    @Nullable
    public CloseableReference<V> cache(K k, CloseableReference<V> closeableReference) {
        return cache(k, closeableReference, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0031 A[Catch: all -> 0x006a, TryCatch #0 {, blocks: (B:4:0x000a, B:9:0x0023, B:11:0x0031, B:12:0x003a, B:14:0x0044, B:16:0x0050, B:17:0x0054, B:18:0x005f), top: B:3:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0044 A[Catch: all -> 0x006a, TryCatch #0 {, blocks: (B:4:0x000a, B:9:0x0023, B:11:0x0031, B:12:0x003a, B:14:0x0044, B:16:0x0050, B:17:0x0054, B:18:0x005f), top: B:3:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0039  */
    @Override // com.facebook.imagepipeline.cache.CountingMemoryCache
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CloseableReference<V> cache(K k, CloseableReference<V> closeableReference, @Nullable CountingMemoryCache.EntryStateObserver<K> entryStateObserver) {
        Entry<K, V> remove;
        Entry<K, V> remove2;
        boolean z;
        Entry<K, V> remove3;
        CloseableReference<V> closeableReference2;
        CloseableReference<V> closeableReference3;
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(closeableReference);
        maybeUpdateCacheParams();
        synchronized (this) {
            remove = this.mLeastFrequentlyUsedExclusiveEntries.remove(k);
            remove2 = this.mMostFrequentlyUsedExclusiveEntries.remove(k);
            if (remove != null && remove2 != null) {
                z = false;
                Preconditions.checkState(z);
                remove3 = this.mCachedEntries.remove(k);
                closeableReference2 = null;
                if (remove3 == null) {
                    makeOrphan(remove3);
                    closeableReference3 = referenceToClose(remove3);
                } else {
                    closeableReference3 = null;
                }
                if (canCacheNewValue(closeableReference.get())) {
                    Entry<K, V> of = Entry.of(k, closeableReference, entryStateObserver);
                    Integer value = this.mLeastFrequentlyUsedKeysGhostList.getValue(k);
                    of.accessCount = value != null ? value.intValue() : 0;
                    this.mCachedEntries.put(k, of);
                    closeableReference2 = newClientReference(of);
                }
            }
            z = true;
            Preconditions.checkState(z);
            remove3 = this.mCachedEntries.remove(k);
            closeableReference2 = null;
            if (remove3 == null) {
            }
            if (canCacheNewValue(closeableReference.get())) {
            }
        }
        CloseableReference.closeSafely((CloseableReference<?>) closeableReference3);
        maybeNotifyExclusiveEntryRemoval(remove, remove2);
        maybeEvictEntries();
        return closeableReference2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
    
        if (getInUseSizeInBytes() <= (r3.mMemoryCacheParams.maxCacheSize - r4)) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private synchronized boolean canCacheNewValue(V v) {
        boolean z;
        int sizeInBytes = this.mValueDescriptor.getSizeInBytes(v);
        z = true;
        if (sizeInBytes <= this.mMemoryCacheParams.maxCacheEntrySize && getInUseCount() <= this.mMemoryCacheParams.maxCacheEntries - 1) {
        }
        z = false;
        return z;
    }

    @Override // com.facebook.imagepipeline.cache.MemoryCache
    @Nullable
    public CloseableReference<V> get(K k) {
        Entry<K, V> remove;
        Entry<K, V> remove2;
        CloseableReference<V> closeableReference;
        Preconditions.checkNotNull(k);
        synchronized (this) {
            remove = this.mLeastFrequentlyUsedExclusiveEntries.remove(k);
            remove2 = this.mMostFrequentlyUsedExclusiveEntries.remove(k);
            Entry<K, V> entry = this.mCachedEntries.get(k);
            if (entry != null) {
                closeableReference = newClientReference(entry);
            } else {
                maybeUpdateCacheFraction(k);
                closeableReference = null;
            }
        }
        maybeNotifyExclusiveEntryRemoval(remove, remove2);
        maybeUpdateCacheParams();
        maybeEvictEntries();
        return closeableReference;
    }

    @Override // com.facebook.imagepipeline.cache.MemoryCache
    public void probe(K k) {
        Preconditions.checkNotNull(k);
        synchronized (this) {
            Entry<K, V> remove = this.mLeastFrequentlyUsedExclusiveEntries.remove(k);
            if (remove == null) {
                remove = this.mMostFrequentlyUsedExclusiveEntries.remove(k);
            }
            if (remove != null) {
                increaseAccessCount(remove);
                maybeAddToExclusives(remove);
            }
        }
    }

    private synchronized void maybeUpdateCacheFraction(K k) {
        if (this.mLeastFrequentlyUsedKeysGhostList.contains(k)) {
            if (this.mLFUFractionPromil + this.mAdaptiveRatePromil <= 900) {
                this.mLFUFractionPromil += this.mAdaptiveRatePromil;
            }
            this.mLeastFrequentlyUsedKeysGhostList.increaseValueIfExists(k);
        } else if (this.mLFUFractionPromil - this.mAdaptiveRatePromil >= 100 && this.mMostFrequentlyUsedKeysGhostList.contains(k)) {
            this.mLFUFractionPromil -= this.mAdaptiveRatePromil;
        }
    }

    private synchronized CloseableReference<V> newClientReference(final Entry<K, V> entry) {
        increaseCounters(entry);
        return CloseableReference.of(entry.valueRef.get(), new ResourceReleaser<V>() { // from class: com.facebook.imagepipeline.cache.AbstractAdaptiveCountingMemoryCache.2
            @Override // com.facebook.common.references.ResourceReleaser
            public void release(V v) {
                AbstractAdaptiveCountingMemoryCache.this.releaseClientReference(entry);
            }
        });
    }

    private synchronized void addElementToGhostList(K k, int i, ArrayListType arrayListType) {
        if (arrayListType == ArrayListType.LFU) {
            this.mLeastFrequentlyUsedKeysGhostList.addPair(k, Integer.valueOf(i));
        } else {
            if (this.mMostFrequentlyUsedKeysGhostList.size() == this.mGhostListMaxSize) {
                this.mMostFrequentlyUsedKeysGhostList.remove(0);
            }
            this.mMostFrequentlyUsedKeysGhostList.add(k);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseClientReference(Entry<K, V> entry) {
        boolean maybeAddToExclusives;
        CloseableReference<V> referenceToClose;
        Preconditions.checkNotNull(entry);
        synchronized (this) {
            decreaseClientCount(entry);
            maybeAddToExclusives = maybeAddToExclusives(entry);
            referenceToClose = referenceToClose(entry);
        }
        CloseableReference.closeSafely((CloseableReference<?>) referenceToClose);
        if (!maybeAddToExclusives) {
            entry = null;
        }
        maybeNotifyExclusiveEntryInsertion(entry);
        maybeUpdateCacheParams();
        maybeEvictEntries();
    }

    private synchronized boolean maybeAddToExclusives(Entry<K, V> entry) {
        if (entry.isOrphan || entry.clientCount != 0) {
            return false;
        }
        if (entry.accessCount > this.mFrequentlyUsedThreshold) {
            this.mMostFrequentlyUsedExclusiveEntries.put(entry.key, entry);
        } else {
            this.mLeastFrequentlyUsedExclusiveEntries.put(entry.key, entry);
        }
        return true;
    }

    @Override // com.facebook.imagepipeline.cache.CountingMemoryCache
    @Nullable
    public CloseableReference<V> reuse(K k) {
        Entry<K, V> remove;
        boolean z;
        CloseableReference<V> closeableReference;
        Preconditions.checkNotNull(k);
        synchronized (this) {
            remove = this.mLeastFrequentlyUsedExclusiveEntries.remove(k);
            if (remove == null) {
                remove = this.mMostFrequentlyUsedExclusiveEntries.remove(k);
            }
            z = true;
            if (remove != null) {
                Entry<K, V> remove2 = this.mCachedEntries.remove(k);
                Preconditions.checkNotNull(remove2);
                Preconditions.checkState(remove2.clientCount == 0);
                closeableReference = remove2.valueRef;
            } else {
                closeableReference = null;
                z = false;
            }
        }
        if (z) {
            maybeNotifyExclusiveEntryRemoval(remove);
        }
        return closeableReference;
    }

    @Override // com.facebook.imagepipeline.cache.MemoryCache
    public int removeAll(Predicate<K> predicate) {
        ArrayList<Entry<K, V>> removeAll;
        ArrayList<Entry<K, V>> removeAll2;
        ArrayList<Entry<K, V>> removeAll3;
        synchronized (this) {
            removeAll = this.mLeastFrequentlyUsedExclusiveEntries.removeAll(predicate);
            removeAll2 = this.mMostFrequentlyUsedExclusiveEntries.removeAll(predicate);
            removeAll3 = this.mCachedEntries.removeAll(predicate);
            makeOrphans(removeAll3);
        }
        maybeClose(removeAll3);
        maybeNotifyExclusiveEntriesRemoval(removeAll, removeAll2);
        maybeUpdateCacheParams();
        maybeEvictEntries();
        return removeAll3.size();
    }

    @Override // com.facebook.imagepipeline.cache.CountingMemoryCache
    public void clear() {
        ArrayList<Entry<K, V>> clear;
        ArrayList<Entry<K, V>> clear2;
        ArrayList<Entry<K, V>> clear3;
        synchronized (this) {
            clear = this.mLeastFrequentlyUsedExclusiveEntries.clear();
            clear2 = this.mMostFrequentlyUsedExclusiveEntries.clear();
            clear3 = this.mCachedEntries.clear();
            makeOrphans(clear3);
        }
        maybeClose(clear3);
        maybeNotifyExclusiveEntriesRemoval(clear, clear2);
        maybeUpdateCacheParams();
    }

    @Override // com.facebook.imagepipeline.cache.MemoryCache
    public synchronized boolean contains(Predicate<K> predicate) {
        return !this.mCachedEntries.getMatchingEntries(predicate).isEmpty();
    }

    @Override // com.facebook.imagepipeline.cache.MemoryCache
    public synchronized boolean contains(K k) {
        return this.mCachedEntries.contains(k);
    }

    @Override // com.facebook.common.memory.MemoryTrimmable
    public void trim(MemoryTrimType memoryTrimType) {
        ArrayList<Entry<K, V>> trimExclusivelyOwnedEntries;
        ArrayList<Entry<K, V>> trimExclusivelyOwnedEntries2;
        double trimRatio = this.mCacheTrimStrategy.getTrimRatio(memoryTrimType);
        synchronized (this) {
            int sizeInBytes = ((int) (this.mCachedEntries.getSizeInBytes() * (1.0d - trimRatio))) - getInUseSizeInBytes();
            int i = 0;
            int max = Math.max(0, sizeInBytes);
            int sizeInBytes2 = this.mMostFrequentlyUsedExclusiveEntries.getSizeInBytes();
            int max2 = Math.max(0, max - sizeInBytes2);
            if (max > sizeInBytes2) {
                max = sizeInBytes2;
                i = max2;
            }
            trimExclusivelyOwnedEntries = trimExclusivelyOwnedEntries(BytesRange.TO_END_OF_CONTENT, i, this.mLeastFrequentlyUsedExclusiveEntries, ArrayListType.LFU);
            trimExclusivelyOwnedEntries2 = trimExclusivelyOwnedEntries(BytesRange.TO_END_OF_CONTENT, max, this.mMostFrequentlyUsedExclusiveEntries, ArrayListType.MFU);
            makeOrphans(trimExclusivelyOwnedEntries, trimExclusivelyOwnedEntries2);
        }
        maybeClose(trimExclusivelyOwnedEntries, trimExclusivelyOwnedEntries2);
        maybeNotifyExclusiveEntriesRemoval(trimExclusivelyOwnedEntries, trimExclusivelyOwnedEntries2);
        maybeUpdateCacheParams();
        maybeEvictEntries();
    }

    private synchronized void maybeUpdateCacheParams() {
        if (this.mLastCacheParamsCheck + this.mMemoryCacheParams.paramsCheckIntervalMs > SystemClock.uptimeMillis()) {
            return;
        }
        this.mLastCacheParamsCheck = SystemClock.uptimeMillis();
        this.mMemoryCacheParams = (MemoryCacheParams) Preconditions.checkNotNull(this.mMemoryCacheParamsSupplier.get(), "mMemoryCacheParamsSupplier returned null");
    }

    @Override // com.facebook.imagepipeline.cache.CountingMemoryCache
    public MemoryCacheParams getMemoryCacheParams() {
        return this.mMemoryCacheParams;
    }

    @Override // com.facebook.imagepipeline.cache.CountingMemoryCache
    public void maybeEvictEntries() {
        ArrayList<Entry<K, V>> trimExclusivelyOwnedEntries;
        ArrayList<Entry<K, V>> trimExclusivelyOwnedEntries2;
        synchronized (this) {
            int min = Math.min(this.mMemoryCacheParams.maxEvictionQueueEntries, this.mMemoryCacheParams.maxCacheEntries - getInUseCount());
            int min2 = Math.min(this.mMemoryCacheParams.maxEvictionQueueSize, this.mMemoryCacheParams.maxCacheSize - getInUseSizeInBytes());
            int i = (int) ((min * this.mLFUFractionPromil) / 1000);
            int i2 = (int) ((min2 * this.mLFUFractionPromil) / 1000);
            trimExclusivelyOwnedEntries = trimExclusivelyOwnedEntries(i, i2, this.mLeastFrequentlyUsedExclusiveEntries, ArrayListType.LFU);
            trimExclusivelyOwnedEntries2 = trimExclusivelyOwnedEntries(min - i, min2 - i2, this.mMostFrequentlyUsedExclusiveEntries, ArrayListType.MFU);
            makeOrphans(trimExclusivelyOwnedEntries, trimExclusivelyOwnedEntries2);
        }
        maybeClose(trimExclusivelyOwnedEntries, trimExclusivelyOwnedEntries2);
        maybeNotifyExclusiveEntriesRemoval(trimExclusivelyOwnedEntries, trimExclusivelyOwnedEntries2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    private synchronized ArrayList<Entry<K, V>> trimExclusivelyOwnedEntries(int i, int i2, CountingLruMap<K, Entry<K, V>> countingLruMap, ArrayListType arrayListType) {
        int max = Math.max(i, 0);
        int max2 = Math.max(i2, 0);
        if (countingLruMap.getCount() <= max && countingLruMap.getSizeInBytes() <= max2) {
            return null;
        }
        ImmutableList immutableList = (ArrayList<Entry<K, V>>) new ArrayList();
        while (true) {
            if (countingLruMap.getCount() <= max && countingLruMap.getSizeInBytes() <= max2) {
                return immutableList;
            }
            Object checkNotNull = Preconditions.checkNotNull(countingLruMap.getFirstKey());
            addElementToGhostList(checkNotNull, ((Entry) Preconditions.checkNotNull(countingLruMap.get(checkNotNull))).accessCount, arrayListType);
            countingLruMap.remove(checkNotNull);
            immutableList.add(this.mCachedEntries.remove(checkNotNull));
        }
    }

    private void maybeClose(@Nullable ArrayList<Entry<K, V>> arrayList, @Nullable ArrayList<Entry<K, V>> arrayList2) {
        maybeClose(arrayList);
        maybeClose(arrayList2);
    }

    private void maybeClose(@Nullable ArrayList<Entry<K, V>> arrayList) {
        if (arrayList != null) {
            Iterator<Entry<K, V>> it = arrayList.iterator();
            while (it.hasNext()) {
                CloseableReference.closeSafely((CloseableReference<?>) referenceToClose(it.next()));
            }
        }
    }

    private void maybeNotifyExclusiveEntriesRemoval(@Nullable ArrayList<Entry<K, V>> arrayList, @Nullable ArrayList<Entry<K, V>> arrayList2) {
        maybeNotifyExclusiveEntryRemoval(arrayList);
        maybeNotifyExclusiveEntryRemoval(arrayList2);
    }

    private void maybeNotifyExclusiveEntryRemoval(@Nullable Entry<K, V> entry, @Nullable Entry<K, V> entry2) {
        maybeNotifyExclusiveEntryRemoval(entry);
        maybeNotifyExclusiveEntryRemoval(entry2);
    }

    private void maybeNotifyExclusiveEntryRemoval(@Nullable ArrayList<Entry<K, V>> arrayList) {
        if (arrayList != null) {
            Iterator<Entry<K, V>> it = arrayList.iterator();
            while (it.hasNext()) {
                maybeNotifyExclusiveEntryRemoval(it.next());
            }
        }
    }

    private static <K, V> void maybeNotifyExclusiveEntryRemoval(@Nullable Entry<K, V> entry) {
        if (entry == null || entry.observer == null) {
            return;
        }
        entry.observer.onExclusivityChanged(entry.key, false);
    }

    private static <K, V> void maybeNotifyExclusiveEntryInsertion(@Nullable Entry<K, V> entry) {
        if (entry == null || entry.observer == null) {
            return;
        }
        entry.observer.onExclusivityChanged(entry.key, true);
    }

    private synchronized void makeOrphans(@Nullable ArrayList<Entry<K, V>> arrayList, @Nullable ArrayList<Entry<K, V>> arrayList2) {
        makeOrphans(arrayList);
        makeOrphans(arrayList2);
    }

    private synchronized void makeOrphans(@Nullable ArrayList<Entry<K, V>> arrayList) {
        if (arrayList != null) {
            Iterator<Entry<K, V>> it = arrayList.iterator();
            while (it.hasNext()) {
                makeOrphan(it.next());
            }
        }
    }

    private synchronized void makeOrphan(Entry<K, V> entry) {
        Preconditions.checkNotNull(entry);
        Preconditions.checkState(!entry.isOrphan);
        entry.isOrphan = true;
    }

    private synchronized void increaseCounters(Entry<K, V> entry) {
        Preconditions.checkNotNull(entry);
        Preconditions.checkState(!entry.isOrphan);
        entry.clientCount++;
        increaseAccessCount(entry);
    }

    private synchronized void increaseAccessCount(Entry<K, V> entry) {
        Preconditions.checkNotNull(entry);
        Preconditions.checkState(!entry.isOrphan);
        entry.accessCount++;
    }

    private synchronized void decreaseClientCount(Entry<K, V> entry) {
        Preconditions.checkNotNull(entry);
        Preconditions.checkState(entry.clientCount > 0);
        entry.clientCount--;
    }

    @Nullable
    private synchronized CloseableReference<V> referenceToClose(Entry<K, V> entry) {
        Preconditions.checkNotNull(entry);
        return (entry.isOrphan && entry.clientCount == 0) ? entry.valueRef : null;
    }

    @Override // com.facebook.imagepipeline.cache.MemoryCache
    public synchronized int getCount() {
        return this.mCachedEntries.getCount();
    }

    @Override // com.facebook.imagepipeline.cache.MemoryCache
    public synchronized int getSizeInBytes() {
        return this.mCachedEntries.getSizeInBytes();
    }

    public synchronized int getInUseCount() {
        return (this.mCachedEntries.getCount() - this.mLeastFrequentlyUsedExclusiveEntries.getCount()) - this.mMostFrequentlyUsedExclusiveEntries.getCount();
    }

    @Override // com.facebook.imagepipeline.cache.CountingMemoryCache
    public synchronized int getInUseSizeInBytes() {
        return (this.mCachedEntries.getSizeInBytes() - this.mLeastFrequentlyUsedExclusiveEntries.getSizeInBytes()) - this.mMostFrequentlyUsedExclusiveEntries.getSizeInBytes();
    }

    @Override // com.facebook.imagepipeline.cache.CountingMemoryCache
    public synchronized int getEvictionQueueCount() {
        return this.mLeastFrequentlyUsedExclusiveEntries.getCount() + this.mMostFrequentlyUsedExclusiveEntries.getCount();
    }

    @Override // com.facebook.imagepipeline.cache.CountingMemoryCache
    public synchronized int getEvictionQueueSizeInBytes() {
        return this.mLeastFrequentlyUsedExclusiveEntries.getSizeInBytes() + this.mMostFrequentlyUsedExclusiveEntries.getSizeInBytes();
    }

    public String reportData() {
        return Objects.toStringHelper("CountingMemoryCache").add("cached_entries_count:", this.mCachedEntries.getCount()).add("exclusive_entries_count", getEvictionQueueCount()).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class IntMapArrayList<E> {
        private final ArrayList<E> mFirstList;
        private final int mMaxCapacity;
        private final ArrayList<Integer> mSecondList;

        public IntMapArrayList(int i) {
            this.mFirstList = new ArrayList<>(i);
            this.mSecondList = new ArrayList<>(i);
            this.mMaxCapacity = i;
        }

        public void addPair(E e, Integer num) {
            if (this.mFirstList.size() == this.mMaxCapacity) {
                this.mFirstList.remove(0);
                this.mSecondList.remove(0);
            }
            this.mFirstList.add(e);
            this.mSecondList.add(num);
        }

        public void increaseValueIfExists(E e) {
            int indexOf = this.mFirstList.indexOf(e);
            if (indexOf < 0) {
                return;
            }
            Integer valueOf = Integer.valueOf(this.mSecondList.get(indexOf).intValue() + 1);
            if (indexOf == this.mMaxCapacity - 1) {
                this.mSecondList.set(this.mMaxCapacity - 1, valueOf);
                return;
            }
            this.mFirstList.remove(indexOf);
            this.mSecondList.remove(indexOf);
            this.mFirstList.add(e);
            this.mSecondList.add(valueOf);
        }

        @Nullable
        public Integer getValue(E e) {
            int indexOf = this.mFirstList.indexOf(e);
            if (indexOf < 0) {
                return null;
            }
            return this.mSecondList.get(indexOf);
        }

        public boolean contains(E e) {
            return this.mFirstList.contains(e);
        }

        public int size() {
            return this.mFirstList.size();
        }
    }

    @Override // com.facebook.imagepipeline.cache.CountingMemoryCache
    public CountingLruMap getCachedEntries() {
        return this.mCachedEntries;
    }

    @Override // com.facebook.imagepipeline.cache.CountingMemoryCache
    public Map<Bitmap, Object> getOtherEntries() {
        return Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class Entry<K, V> {
        public final K key;

        @Nullable
        public final CountingMemoryCache.EntryStateObserver<K> observer;
        public final CloseableReference<V> valueRef;
        public int clientCount = 0;
        public boolean isOrphan = false;
        public int accessCount = 0;

        private Entry(K k, CloseableReference<V> closeableReference, @Nullable CountingMemoryCache.EntryStateObserver<K> entryStateObserver) {
            this.key = (K) Preconditions.checkNotNull(k);
            this.valueRef = (CloseableReference) Preconditions.checkNotNull(CloseableReference.cloneOrNull(closeableReference));
            this.observer = entryStateObserver;
        }

        @VisibleForTesting
        static <K, V> Entry<K, V> of(K k, CloseableReference<V> closeableReference, @Nullable CountingMemoryCache.EntryStateObserver<K> entryStateObserver) {
            return new Entry<>(k, closeableReference, entryStateObserver);
        }
    }
}
