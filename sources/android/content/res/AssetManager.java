package android.content.res;

import android.content.pm.ActivityInfo;
import android.content.res.XmlBlock;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.ParcelFileDescriptor;
import android.util.ArraySet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.Preconditions;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import libcore.io.IoUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public final class AssetManager implements AutoCloseable {
    public static final int ACCESS_BUFFER = 3;
    public static final int ACCESS_RANDOM = 1;
    public static final int ACCESS_STREAMING = 2;
    public static final int ACCESS_UNKNOWN = 0;
    private static final boolean DEBUG_REFS = false;
    private static final String FRAMEWORK_APK_PATH = "/system/framework/framework-res.apk";
    private static final String TAG = "AssetManager";

    @GuardedBy("sSync")
    private static ArraySet<ApkAssets> sSystemApkAssetsSet;

    @GuardedBy("this")
    private ApkAssets[] mApkAssets;

    @GuardedBy("this")
    private int mNumRefs;

    @GuardedBy("this")
    private long mObject;

    @GuardedBy("this")
    private final long[] mOffsets;

    @GuardedBy("this")
    private boolean mOpen;

    @GuardedBy("this")
    private HashMap<Long, RuntimeException> mRefStacks;

    @GuardedBy("this")
    private final TypedValue mValue;
    private static final Object sSync = new Object();
    private static final ApkAssets[] sEmptyApkAssets = new ApkAssets[0];

    @GuardedBy("sSync")
    static AssetManager sSystem = null;

    @GuardedBy("sSync")
    private static ApkAssets[] sSystemApkAssets = new ApkAssets[0];

    public static native String getAssetAllocations();

    public static native int getGlobalAssetCount();

    public static native int getGlobalAssetManagerCount();

    private void invalidateCachesLocked(int i) {
    }

    private static native void nativeApplyStyle(long j, long j2, int i, int i2, long j3, int[] iArr, long j4, long j5);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeAssetDestroy(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nativeAssetGetLength(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nativeAssetGetRemainingLength(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native int nativeAssetRead(long j, byte[] bArr, int i, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native int nativeAssetReadChar(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nativeAssetSeek(long j, long j2, int i);

    private static native long nativeCreate();

    private static native void nativeDestroy(long j);

    private static native SparseArray<String> nativeGetAssignedPackageIdentifiers(long j);

    private static native String[] nativeGetLocales(long j, boolean z);

    private static native int nativeGetResourceArray(long j, int i, int[] iArr);

    private static native int nativeGetResourceArraySize(long j, int i);

    private static native int nativeGetResourceBagValue(long j, int i, int i2, TypedValue typedValue);

    private static native String nativeGetResourceEntryName(long j, int i);

    private static native int nativeGetResourceIdentifier(long j, String str, String str2, String str3);

    private static native int[] nativeGetResourceIntArray(long j, int i);

    private static native String nativeGetResourceName(long j, int i);

    private static native String nativeGetResourcePackageName(long j, int i);

    private static native String[] nativeGetResourceStringArray(long j, int i);

    private static native int[] nativeGetResourceStringArrayInfo(long j, int i);

    private static native String nativeGetResourceTypeName(long j, int i);

    private static native int nativeGetResourceValue(long j, int i, short s, TypedValue typedValue, boolean z);

    private static native Configuration[] nativeGetSizeConfigurations(long j);

    private static native int[] nativeGetStyleAttributes(long j, int i);

    private static native String[] nativeList(long j, String str) throws IOException;

    private static native long nativeOpenAsset(long j, String str, int i);

    private static native ParcelFileDescriptor nativeOpenAssetFd(long j, String str, long[] jArr) throws IOException;

    private static native long nativeOpenNonAsset(long j, int i, String str, int i2);

    private static native ParcelFileDescriptor nativeOpenNonAssetFd(long j, int i, String str, long[] jArr) throws IOException;

    private static native long nativeOpenXmlAsset(long j, int i, String str);

    private static native boolean nativeResolveAttrs(long j, long j2, int i, int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4);

    private static native boolean nativeRetrieveAttributes(long j, long j2, int[] iArr, int[] iArr2, int[] iArr3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeSetApkAssets(long j, ApkAssets[] apkAssetsArr, boolean z);

    private static native void nativeSetConfiguration(long j, int i, int i2, String str, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17);

    private static native void nativeThemeApplyStyle(long j, long j2, int i, boolean z);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeThemeClear(long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeThemeCopy(long j, long j2);

    private static native long nativeThemeCreate(long j);

    private static native void nativeThemeDestroy(long j);

    private static native void nativeThemeDump(long j, long j2, int i, String str, String str2);

    private static native int nativeThemeGetAttributeValue(long j, long j2, int i, TypedValue typedValue, boolean z);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int nativeThemeGetChangingConfigurations(long j);

    private static native void nativeVerifySystemIdmaps();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Builder {
        private ArrayList<ApkAssets> mUserApkAssets = new ArrayList<>();

        public Builder addApkAssets(ApkAssets apkAssets) {
            this.mUserApkAssets.add(apkAssets);
            return this;
        }

        public AssetManager build() {
            ApkAssets[] apkAssets = AssetManager.getSystem().getApkAssets();
            ApkAssets[] apkAssetsArr = new ApkAssets[apkAssets.length + this.mUserApkAssets.size()];
            boolean z = false;
            System.arraycopy(apkAssets, 0, apkAssetsArr, 0, apkAssets.length);
            int size = this.mUserApkAssets.size();
            for (int i = 0; i < size; i++) {
                apkAssetsArr[apkAssets.length + i] = this.mUserApkAssets.get(i);
            }
            AssetManager assetManager = new AssetManager(z);
            assetManager.mApkAssets = apkAssetsArr;
            AssetManager.nativeSetApkAssets(assetManager.mObject, apkAssetsArr, false);
            return assetManager;
        }
    }

    public AssetManager() {
        ApkAssets[] apkAssetsArr;
        this.mValue = new TypedValue();
        this.mOffsets = new long[2];
        this.mOpen = true;
        this.mNumRefs = 1;
        synchronized (sSync) {
            createSystemAssetsInZygoteLocked();
            apkAssetsArr = sSystemApkAssets;
        }
        this.mObject = nativeCreate();
        setApkAssets(apkAssetsArr, false);
    }

    private AssetManager(boolean z) {
        this.mValue = new TypedValue();
        this.mOffsets = new long[2];
        this.mOpen = true;
        this.mNumRefs = 1;
        this.mObject = nativeCreate();
    }

    @GuardedBy("sSync")
    private static void createSystemAssetsInZygoteLocked() {
        if (sSystem != null) {
            return;
        }
        nativeVerifySystemIdmaps();
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(ApkAssets.loadFromPath(FRAMEWORK_APK_PATH, true));
            loadStaticRuntimeOverlays(arrayList);
            sSystemApkAssetsSet = new ArraySet<>(arrayList);
            sSystemApkAssets = (ApkAssets[]) arrayList.toArray(new ApkAssets[arrayList.size()]);
            sSystem = new AssetManager(true);
            sSystem.setApkAssets(sSystemApkAssets, false);
        } catch (IOException e) {
            throw new IllegalStateException("Failed to create system AssetManager", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0050 A[Catch: all -> 0x0054, Throwable -> 0x0056, TRY_ENTER, TryCatch #4 {, blocks: (B:8:0x0012, B:15:0x003b, B:24:0x0050, B:25:0x0053), top: B:7:0x0012, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[Catch: all -> 0x0054, Throwable -> 0x0056, SYNTHETIC, TRY_LEAVE, TryCatch #4 {, blocks: (B:8:0x0012, B:15:0x003b, B:24:0x0050, B:25:0x0053), top: B:7:0x0012, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void loadStaticRuntimeOverlays(ArrayList<ApkAssets> arrayList) throws IOException {
        Throwable th;
        Throwable th2;
        try {
            FileInputStream fileInputStream = new FileInputStream("/data/resource-cache/overlays.list");
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
                try {
                    FileLock lock = fileInputStream.getChannel().lock(0L, Long.MAX_VALUE, true);
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            } else {
                                arrayList.add(ApkAssets.loadOverlayFromPath(readLine.split(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER)[1], true));
                            }
                        } catch (Throwable th3) {
                            try {
                                throw th3;
                            } catch (Throwable th4) {
                                th = th3;
                                th2 = th4;
                                if (lock != null) {
                                    throw th2;
                                }
                                $closeResource(th, lock);
                                throw th2;
                            }
                        }
                    }
                    if (lock != null) {
                        $closeResource(null, lock);
                    }
                } finally {
                    $closeResource(null, bufferedReader);
                }
            } finally {
                IoUtils.closeQuietly(fileInputStream);
            }
        } catch (FileNotFoundException unused) {
            Log.i(TAG, "no overlays.list file found");
        }
    }

    private static /* synthetic */ void $closeResource(Throwable th, AutoCloseable autoCloseable) {
        if (th == null) {
            autoCloseable.close();
            return;
        }
        try {
            autoCloseable.close();
        } catch (Throwable th2) {
            th.addSuppressed(th2);
        }
    }

    public static AssetManager getSystem() {
        AssetManager assetManager;
        synchronized (sSync) {
            createSystemAssetsInZygoteLocked();
            assetManager = sSystem;
        }
        return assetManager;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (this.mOpen) {
                this.mOpen = false;
                decRefsLocked(hashCode());
            }
        }
    }

    public void setApkAssets(ApkAssets[] apkAssetsArr, boolean z) {
        Preconditions.checkNotNull(apkAssetsArr, "apkAssets");
        ApkAssets[] apkAssetsArr2 = new ApkAssets[sSystemApkAssets.length + apkAssetsArr.length];
        System.arraycopy(sSystemApkAssets, 0, apkAssetsArr2, 0, sSystemApkAssets.length);
        int length = sSystemApkAssets.length;
        for (ApkAssets apkAssets : apkAssetsArr) {
            if (!sSystemApkAssetsSet.contains(apkAssets)) {
                apkAssetsArr2[length] = apkAssets;
                length++;
            }
        }
        if (length != apkAssetsArr2.length) {
            apkAssetsArr2 = (ApkAssets[]) Arrays.copyOf(apkAssetsArr2, length);
        }
        synchronized (this) {
            ensureOpenLocked();
            this.mApkAssets = apkAssetsArr2;
            nativeSetApkAssets(this.mObject, this.mApkAssets, z);
            if (z) {
                invalidateCachesLocked(-1);
            }
        }
    }

    public ApkAssets[] getApkAssets() {
        synchronized (this) {
            if (this.mOpen) {
                return this.mApkAssets;
            }
            return sEmptyApkAssets;
        }
    }

    public int findCookieForPath(String str) {
        Preconditions.checkNotNull(str, "path");
        synchronized (this) {
            ensureValidLocked();
            int length = this.mApkAssets.length;
            for (int i = 0; i < length; i++) {
                if (str.equals(this.mApkAssets[i].getAssetPath())) {
                    return i + 1;
                }
            }
            return 0;
        }
    }

    @Deprecated
    public int addAssetPath(String str) {
        return addAssetPathInternal(str, false, false);
    }

    @Deprecated
    public int addAssetPathAsSharedLibrary(String str) {
        return addAssetPathInternal(str, false, true);
    }

    @Deprecated
    public int addOverlayPath(String str) {
        return addAssetPathInternal(str, true, false);
    }

    private int addAssetPathInternal(String str, boolean z, boolean z2) {
        ApkAssets loadFromPath;
        Preconditions.checkNotNull(str, "path");
        synchronized (this) {
            ensureOpenLocked();
            int length = this.mApkAssets.length;
            for (int i = 0; i < length; i++) {
                if (this.mApkAssets[i].getAssetPath().equals(str)) {
                    return i + 1;
                }
            }
            try {
                if (z) {
                    loadFromPath = ApkAssets.loadOverlayFromPath("/data/resource-cache/" + str.substring(1).replace('/', '@') + "@idmap", false);
                } else {
                    loadFromPath = ApkAssets.loadFromPath(str, false, z2);
                }
                int i2 = length + 1;
                this.mApkAssets = (ApkAssets[]) Arrays.copyOf(this.mApkAssets, i2);
                this.mApkAssets[length] = loadFromPath;
                nativeSetApkAssets(this.mObject, this.mApkAssets, true);
                invalidateCachesLocked(-1);
                return i2;
            } catch (IOException unused) {
                return 0;
            }
        }
    }

    @GuardedBy("this")
    private void ensureValidLocked() {
        if (this.mObject == 0) {
            throw new RuntimeException("AssetManager has been destroyed");
        }
    }

    @GuardedBy("this")
    private void ensureOpenLocked() {
        if (!this.mOpen) {
            throw new RuntimeException("AssetManager has been closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean getResourceValue(int i, int i2, TypedValue typedValue, boolean z) {
        Preconditions.checkNotNull(typedValue, "outValue");
        synchronized (this) {
            ensureValidLocked();
            int nativeGetResourceValue = nativeGetResourceValue(this.mObject, i, (short) i2, typedValue, z);
            if (nativeGetResourceValue <= 0) {
                return false;
            }
            typedValue.changingConfigurations = ActivityInfo.activityInfoConfigNativeToJava(typedValue.changingConfigurations);
            if (typedValue.type == 3) {
                typedValue.string = this.mApkAssets[nativeGetResourceValue - 1].getStringFromPool(typedValue.data);
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence getResourceText(int i) {
        synchronized (this) {
            TypedValue typedValue = this.mValue;
            if (!getResourceValue(i, 0, typedValue, true)) {
                return null;
            }
            return typedValue.coerceToString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence getResourceBagText(int i, int i2) {
        synchronized (this) {
            ensureValidLocked();
            TypedValue typedValue = this.mValue;
            int nativeGetResourceBagValue = nativeGetResourceBagValue(this.mObject, i, i2, typedValue);
            if (nativeGetResourceBagValue <= 0) {
                return null;
            }
            typedValue.changingConfigurations = ActivityInfo.activityInfoConfigNativeToJava(typedValue.changingConfigurations);
            if (typedValue.type == 3) {
                return this.mApkAssets[nativeGetResourceBagValue - 1].getStringFromPool(typedValue.data);
            }
            return typedValue.coerceToString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getResourceArraySize(int i) {
        int nativeGetResourceArraySize;
        synchronized (this) {
            ensureValidLocked();
            nativeGetResourceArraySize = nativeGetResourceArraySize(this.mObject, i);
        }
        return nativeGetResourceArraySize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getResourceArray(int i, int[] iArr) {
        int nativeGetResourceArray;
        Preconditions.checkNotNull(iArr, "outData");
        synchronized (this) {
            ensureValidLocked();
            nativeGetResourceArray = nativeGetResourceArray(this.mObject, i, iArr);
        }
        return nativeGetResourceArray;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String[] getResourceStringArray(int i) {
        String[] nativeGetResourceStringArray;
        synchronized (this) {
            ensureValidLocked();
            nativeGetResourceStringArray = nativeGetResourceStringArray(this.mObject, i);
        }
        return nativeGetResourceStringArray;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence[] getResourceTextArray(int i) {
        synchronized (this) {
            ensureValidLocked();
            int[] nativeGetResourceStringArrayInfo = nativeGetResourceStringArrayInfo(this.mObject, i);
            if (nativeGetResourceStringArrayInfo == null) {
                return null;
            }
            int length = nativeGetResourceStringArrayInfo.length;
            CharSequence[] charSequenceArr = new CharSequence[length / 2];
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                int i4 = nativeGetResourceStringArrayInfo[i2];
                int i5 = nativeGetResourceStringArrayInfo[i2 + 1];
                charSequenceArr[i3] = (i5 < 0 || i4 <= 0) ? null : this.mApkAssets[i4 - 1].getStringFromPool(i5);
                i2 += 2;
                i3++;
            }
            return charSequenceArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] getResourceIntArray(int i) {
        int[] nativeGetResourceIntArray;
        synchronized (this) {
            ensureValidLocked();
            nativeGetResourceIntArray = nativeGetResourceIntArray(this.mObject, i);
        }
        return nativeGetResourceIntArray;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] getStyleAttributes(int i) {
        int[] nativeGetStyleAttributes;
        synchronized (this) {
            ensureValidLocked();
            nativeGetStyleAttributes = nativeGetStyleAttributes(this.mObject, i);
        }
        return nativeGetStyleAttributes;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean getThemeValue(long j, int i, TypedValue typedValue, boolean z) {
        Preconditions.checkNotNull(typedValue, "outValue");
        synchronized (this) {
            ensureValidLocked();
            int nativeThemeGetAttributeValue = nativeThemeGetAttributeValue(this.mObject, j, i, typedValue, z);
            if (nativeThemeGetAttributeValue <= 0) {
                return false;
            }
            typedValue.changingConfigurations = ActivityInfo.activityInfoConfigNativeToJava(typedValue.changingConfigurations);
            if (typedValue.type == 3) {
                typedValue.string = this.mApkAssets[nativeThemeGetAttributeValue - 1].getStringFromPool(typedValue.data);
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dumpTheme(long j, int i, String str, String str2) {
        synchronized (this) {
            ensureValidLocked();
            nativeThemeDump(this.mObject, j, i, str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getResourceName(int i) {
        String nativeGetResourceName;
        synchronized (this) {
            ensureValidLocked();
            nativeGetResourceName = nativeGetResourceName(this.mObject, i);
        }
        return nativeGetResourceName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getResourcePackageName(int i) {
        String nativeGetResourcePackageName;
        synchronized (this) {
            ensureValidLocked();
            nativeGetResourcePackageName = nativeGetResourcePackageName(this.mObject, i);
        }
        return nativeGetResourcePackageName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getResourceTypeName(int i) {
        String nativeGetResourceTypeName;
        synchronized (this) {
            ensureValidLocked();
            nativeGetResourceTypeName = nativeGetResourceTypeName(this.mObject, i);
        }
        return nativeGetResourceTypeName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getResourceEntryName(int i) {
        String nativeGetResourceEntryName;
        synchronized (this) {
            ensureValidLocked();
            nativeGetResourceEntryName = nativeGetResourceEntryName(this.mObject, i);
        }
        return nativeGetResourceEntryName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getResourceIdentifier(String str, String str2, String str3) {
        int nativeGetResourceIdentifier;
        synchronized (this) {
            ensureValidLocked();
            nativeGetResourceIdentifier = nativeGetResourceIdentifier(this.mObject, str, str2, str3);
        }
        return nativeGetResourceIdentifier;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence getPooledStringForCookie(int i, int i2) {
        return getApkAssets()[i - 1].getStringFromPool(i2);
    }

    public InputStream open(String str) throws IOException {
        return open(str, 2);
    }

    public InputStream open(String str, int i) throws IOException {
        AssetInputStream assetInputStream;
        Preconditions.checkNotNull(str, "fileName");
        synchronized (this) {
            ensureOpenLocked();
            long nativeOpenAsset = nativeOpenAsset(this.mObject, str, i);
            if (nativeOpenAsset == 0) {
                throw new FileNotFoundException("Asset file: " + str);
            }
            assetInputStream = new AssetInputStream(nativeOpenAsset);
            incRefsLocked(assetInputStream.hashCode());
        }
        return assetInputStream;
    }

    public AssetFileDescriptor openFd(String str) throws IOException {
        AssetFileDescriptor assetFileDescriptor;
        Preconditions.checkNotNull(str, "fileName");
        synchronized (this) {
            ensureOpenLocked();
            ParcelFileDescriptor nativeOpenAssetFd = nativeOpenAssetFd(this.mObject, str, this.mOffsets);
            if (nativeOpenAssetFd == null) {
                throw new FileNotFoundException("Asset file: " + str);
            }
            assetFileDescriptor = new AssetFileDescriptor(nativeOpenAssetFd, this.mOffsets[0], this.mOffsets[1]);
        }
        return assetFileDescriptor;
    }

    public String[] list(String str) throws IOException {
        String[] nativeList;
        Preconditions.checkNotNull(str, "path");
        synchronized (this) {
            ensureValidLocked();
            nativeList = nativeList(this.mObject, str);
        }
        return nativeList;
    }

    public InputStream openNonAsset(String str) throws IOException {
        return openNonAsset(0, str, 2);
    }

    public InputStream openNonAsset(String str, int i) throws IOException {
        return openNonAsset(0, str, i);
    }

    public InputStream openNonAsset(int i, String str) throws IOException {
        return openNonAsset(i, str, 2);
    }

    public InputStream openNonAsset(int i, String str, int i2) throws IOException {
        AssetInputStream assetInputStream;
        Preconditions.checkNotNull(str, "fileName");
        synchronized (this) {
            ensureOpenLocked();
            long nativeOpenNonAsset = nativeOpenNonAsset(this.mObject, i, str, i2);
            if (nativeOpenNonAsset == 0) {
                throw new FileNotFoundException("Asset absolute file: " + str);
            }
            assetInputStream = new AssetInputStream(nativeOpenNonAsset);
            incRefsLocked(assetInputStream.hashCode());
        }
        return assetInputStream;
    }

    public AssetFileDescriptor openNonAssetFd(String str) throws IOException {
        return openNonAssetFd(0, str);
    }

    public AssetFileDescriptor openNonAssetFd(int i, String str) throws IOException {
        AssetFileDescriptor assetFileDescriptor;
        Preconditions.checkNotNull(str, "fileName");
        synchronized (this) {
            ensureOpenLocked();
            ParcelFileDescriptor nativeOpenNonAssetFd = nativeOpenNonAssetFd(this.mObject, i, str, this.mOffsets);
            if (nativeOpenNonAssetFd == null) {
                throw new FileNotFoundException("Asset absolute file: " + str);
            }
            assetFileDescriptor = new AssetFileDescriptor(nativeOpenNonAssetFd, this.mOffsets[0], this.mOffsets[1]);
        }
        return assetFileDescriptor;
    }

    public XmlResourceParser openXmlResourceParser(String str) throws IOException {
        return openXmlResourceParser(0, str);
    }

    public XmlResourceParser openXmlResourceParser(int i, String str) throws IOException {
        XmlBlock openXmlBlockAsset = openXmlBlockAsset(i, str);
        Throwable th = null;
        try {
            XmlResourceParser newParser = openXmlBlockAsset.newParser();
            if (newParser != null) {
                return newParser;
            }
            throw new AssertionError("block.newParser() returned a null parser");
        } finally {
            if (openXmlBlockAsset != null) {
                $closeResource(th, openXmlBlockAsset);
            }
        }
    }

    XmlBlock openXmlBlockAsset(String str) throws IOException {
        return openXmlBlockAsset(0, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XmlBlock openXmlBlockAsset(int i, String str) throws IOException {
        XmlBlock xmlBlock;
        Preconditions.checkNotNull(str, "fileName");
        synchronized (this) {
            ensureOpenLocked();
            long nativeOpenXmlAsset = nativeOpenXmlAsset(this.mObject, i, str);
            if (nativeOpenXmlAsset == 0) {
                throw new FileNotFoundException("Asset XML file: " + str);
            }
            xmlBlock = new XmlBlock(this, nativeOpenXmlAsset);
            incRefsLocked(xmlBlock.hashCode());
        }
        return xmlBlock;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void xmlBlockGone(int i) {
        synchronized (this) {
            decRefsLocked(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void applyStyle(long j, int i, int i2, XmlBlock.Parser parser, int[] iArr, long j2, long j3) {
        Preconditions.checkNotNull(iArr, "inAttrs");
        synchronized (this) {
            ensureValidLocked();
            nativeApplyStyle(this.mObject, j, i, i2, parser != null ? parser.mParseState : 0L, iArr, j2, j3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean resolveAttrs(long j, int i, int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        boolean nativeResolveAttrs;
        Preconditions.checkNotNull(iArr2, "inAttrs");
        Preconditions.checkNotNull(iArr3, "outValues");
        Preconditions.checkNotNull(iArr4, "outIndices");
        synchronized (this) {
            ensureValidLocked();
            nativeResolveAttrs = nativeResolveAttrs(this.mObject, j, i, i2, iArr, iArr2, iArr3, iArr4);
        }
        return nativeResolveAttrs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean retrieveAttributes(XmlBlock.Parser parser, int[] iArr, int[] iArr2, int[] iArr3) {
        boolean nativeRetrieveAttributes;
        Preconditions.checkNotNull(parser, "parser");
        Preconditions.checkNotNull(iArr, "inAttrs");
        Preconditions.checkNotNull(iArr2, "outValues");
        Preconditions.checkNotNull(iArr3, "outIndices");
        synchronized (this) {
            ensureValidLocked();
            nativeRetrieveAttributes = nativeRetrieveAttributes(this.mObject, parser.mParseState, iArr, iArr2, iArr3);
        }
        return nativeRetrieveAttributes;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long createTheme() {
        long nativeThemeCreate;
        synchronized (this) {
            ensureValidLocked();
            nativeThemeCreate = nativeThemeCreate(this.mObject);
            incRefsLocked(nativeThemeCreate);
        }
        return nativeThemeCreate;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void releaseTheme(long j) {
        synchronized (this) {
            nativeThemeDestroy(j);
            decRefsLocked(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void applyStyleToTheme(long j, int i, boolean z) {
        synchronized (this) {
            ensureValidLocked();
            nativeThemeApplyStyle(this.mObject, j, i, z);
        }
    }

    protected void finalize() throws Throwable {
        synchronized (this) {
            if (this.mObject != 0) {
                nativeDestroy(this.mObject);
                this.mObject = 0L;
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public final class AssetInputStream extends InputStream {
        private long mAssetNativePtr;
        private long mLength;
        private long mMarkPos;

        @Override // java.io.InputStream
        public final boolean markSupported() {
            return true;
        }

        public final int getAssetInt() {
            throw new UnsupportedOperationException();
        }

        public final long getNativeAsset() {
            return this.mAssetNativePtr;
        }

        private AssetInputStream(long j) {
            this.mAssetNativePtr = j;
            this.mLength = AssetManager.nativeAssetGetLength(j);
        }

        @Override // java.io.InputStream
        public final int read() throws IOException {
            ensureOpen();
            return AssetManager.nativeAssetReadChar(this.mAssetNativePtr);
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr) throws IOException {
            ensureOpen();
            Preconditions.checkNotNull(bArr, "b");
            return AssetManager.nativeAssetRead(this.mAssetNativePtr, bArr, 0, bArr.length);
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) throws IOException {
            ensureOpen();
            Preconditions.checkNotNull(bArr, "b");
            return AssetManager.nativeAssetRead(this.mAssetNativePtr, bArr, i, i2);
        }

        @Override // java.io.InputStream
        public final long skip(long j) throws IOException {
            ensureOpen();
            long nativeAssetSeek = AssetManager.nativeAssetSeek(this.mAssetNativePtr, 0L, 0);
            if (nativeAssetSeek + j > this.mLength) {
                j = this.mLength - nativeAssetSeek;
            }
            if (j > 0) {
                AssetManager.nativeAssetSeek(this.mAssetNativePtr, j, 0);
            }
            return j;
        }

        @Override // java.io.InputStream
        public final int available() throws IOException {
            ensureOpen();
            long nativeAssetGetRemainingLength = AssetManager.nativeAssetGetRemainingLength(this.mAssetNativePtr);
            if (nativeAssetGetRemainingLength > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            return (int) nativeAssetGetRemainingLength;
        }

        @Override // java.io.InputStream
        public final void mark(int i) {
            ensureOpen();
            this.mMarkPos = AssetManager.nativeAssetSeek(this.mAssetNativePtr, 0L, 0);
        }

        @Override // java.io.InputStream
        public final void reset() throws IOException {
            ensureOpen();
            AssetManager.nativeAssetSeek(this.mAssetNativePtr, this.mMarkPos, -1);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.mAssetNativePtr != 0) {
                AssetManager.nativeAssetDestroy(this.mAssetNativePtr);
                this.mAssetNativePtr = 0L;
                synchronized (AssetManager.this) {
                    AssetManager.this.decRefsLocked(hashCode());
                }
            }
        }

        protected void finalize() throws Throwable {
            close();
        }

        private void ensureOpen() {
            if (this.mAssetNativePtr == 0) {
                throw new IllegalStateException("AssetInputStream is closed");
            }
        }
    }

    public boolean isUpToDate() {
        for (ApkAssets apkAssets : getApkAssets()) {
            if (!apkAssets.isUpToDate()) {
                return false;
            }
        }
        return true;
    }

    public String[] getLocales() {
        String[] nativeGetLocales;
        synchronized (this) {
            ensureValidLocked();
            nativeGetLocales = nativeGetLocales(this.mObject, false);
        }
        return nativeGetLocales;
    }

    public String[] getNonSystemLocales() {
        String[] nativeGetLocales;
        synchronized (this) {
            ensureValidLocked();
            nativeGetLocales = nativeGetLocales(this.mObject, true);
        }
        return nativeGetLocales;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Configuration[] getSizeConfigurations() {
        Configuration[] nativeGetSizeConfigurations;
        synchronized (this) {
            ensureValidLocked();
            nativeGetSizeConfigurations = nativeGetSizeConfigurations(this.mObject);
        }
        return nativeGetSizeConfigurations;
    }

    public void setConfiguration(int i, int i2, String str, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        synchronized (this) {
            ensureValidLocked();
            nativeSetConfiguration(this.mObject, i, i2, str, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17);
        }
    }

    public SparseArray<String> getAssignedPackageIdentifiers() {
        SparseArray<String> nativeGetAssignedPackageIdentifiers;
        synchronized (this) {
            ensureValidLocked();
            nativeGetAssignedPackageIdentifiers = nativeGetAssignedPackageIdentifiers(this.mObject);
        }
        return nativeGetAssignedPackageIdentifiers;
    }

    @GuardedBy("this")
    private void incRefsLocked(long j) {
        this.mNumRefs++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("this")
    public void decRefsLocked(long j) {
        this.mNumRefs--;
        if (this.mNumRefs != 0 || this.mObject == 0) {
            return;
        }
        nativeDestroy(this.mObject);
        this.mObject = 0L;
        this.mApkAssets = sEmptyApkAssets;
    }
}
