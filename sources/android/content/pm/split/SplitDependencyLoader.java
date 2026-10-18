package android.content.pm.split;

import android.content.pm.PackageParser;
import android.util.IntArray;
import android.util.SparseArray;
import java.lang.Exception;
import java.util.Arrays;
import java.util.BitSet;
import libcore.util.EmptyArray;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class SplitDependencyLoader<E extends Exception> {
    private final SparseArray<int[]> mDependencies;

    protected abstract void constructSplit(int i, int[] iArr, int i2) throws Exception;

    protected abstract boolean isSplitCached(int i);

    /* JADX INFO: Access modifiers changed from: protected */
    public SplitDependencyLoader(SparseArray<int[]> sparseArray) {
        this.mDependencies = sparseArray;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void loadDependenciesForSplit(int i) throws Exception {
        if (isSplitCached(i)) {
            return;
        }
        if (i == 0) {
            constructSplit(0, collectConfigSplitIndices(0), -1);
            return;
        }
        IntArray intArray = new IntArray();
        intArray.add(i);
        while (true) {
            int[] iArr = this.mDependencies.get(i);
            i = (iArr == null || iArr.length <= 0) ? -1 : iArr[0];
            if (i < 0 || isSplitCached(i)) {
                break;
            } else {
                intArray.add(i);
            }
        }
        int size = intArray.size() - 1;
        while (size >= 0) {
            int i2 = intArray.get(size);
            constructSplit(i2, collectConfigSplitIndices(i2), i);
            size--;
            i = i2;
        }
    }

    private int[] collectConfigSplitIndices(int i) {
        int[] iArr = this.mDependencies.get(i);
        if (iArr == null || iArr.length <= 1) {
            return EmptyArray.INT;
        }
        return Arrays.copyOfRange(iArr, 1, iArr.length);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class IllegalDependencyException extends Exception {
        private IllegalDependencyException(String str) {
            super(str);
        }
    }

    private static int[] append(int[] iArr, int i) {
        if (iArr == null) {
            return new int[]{i};
        }
        int[] copyOf = Arrays.copyOf(iArr, iArr.length + 1);
        copyOf[iArr.length] = i;
        return copyOf;
    }

    public static SparseArray<int[]> createDependenciesFromPackage(PackageParser.PackageLite packageLite) throws IllegalDependencyException {
        int i;
        int i2;
        SparseArray<int[]> sparseArray = new SparseArray<>();
        sparseArray.put(0, new int[]{-1});
        int i3 = 0;
        while (true) {
            if (i3 < packageLite.splitNames.length) {
                if (packageLite.isFeatureSplits[i3]) {
                    String str = packageLite.usesSplitNames[i3];
                    if (str != null) {
                        int binarySearch = Arrays.binarySearch(packageLite.splitNames, str);
                        if (binarySearch < 0) {
                            throw new IllegalDependencyException("Split '" + packageLite.splitNames[i3] + "' requires split '" + str + "', which is missing.");
                        }
                        i2 = binarySearch + 1;
                    } else {
                        i2 = 0;
                    }
                    sparseArray.put(i3 + 1, new int[]{i2});
                }
                i3++;
            } else {
                for (int i4 = 0; i4 < packageLite.splitNames.length; i4++) {
                    if (!packageLite.isFeatureSplits[i4]) {
                        String str2 = packageLite.configForSplit[i4];
                        if (str2 != null) {
                            int binarySearch2 = Arrays.binarySearch(packageLite.splitNames, str2);
                            if (binarySearch2 < 0) {
                                throw new IllegalDependencyException("Split '" + packageLite.splitNames[i4] + "' targets split '" + str2 + "', which is missing.");
                            }
                            if (!packageLite.isFeatureSplits[binarySearch2]) {
                                throw new IllegalDependencyException("Split '" + packageLite.splitNames[i4] + "' declares itself as configuration split for a non-feature split '" + packageLite.splitNames[binarySearch2] + "'");
                            }
                            i = binarySearch2 + 1;
                        } else {
                            i = 0;
                        }
                        sparseArray.put(i, append(sparseArray.get(i), i4 + 1));
                    }
                }
                BitSet bitSet = new BitSet();
                int size = sparseArray.size();
                for (int i5 = 0; i5 < size; i5++) {
                    int keyAt = sparseArray.keyAt(i5);
                    bitSet.clear();
                    while (keyAt != -1) {
                        if (bitSet.get(keyAt)) {
                            throw new IllegalDependencyException("Cycle detected in split dependencies.");
                        }
                        bitSet.set(keyAt);
                        int[] iArr = sparseArray.get(keyAt);
                        keyAt = iArr != null ? iArr[0] : -1;
                    }
                }
                return sparseArray;
            }
        }
    }
}
