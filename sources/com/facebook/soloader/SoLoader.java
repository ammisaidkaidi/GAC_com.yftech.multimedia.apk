package com.facebook.soloader;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.soloader.nativeloader.NativeLoader;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.NotThreadSafe;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: /home/user/work/dex/classes3.dex */
public class SoLoader {
    static final boolean DEBUG = false;
    public static final int SOLOADER_ALLOW_ASYNC_INIT = 2;
    public static final int SOLOADER_DISABLE_BACKUP_SOSOURCE = 8;
    public static final int SOLOADER_DONT_TREAT_AS_SYSTEMAPP = 32;
    public static final int SOLOADER_ENABLE_EXOPACKAGE = 1;
    public static final int SOLOADER_LOOK_IN_ZIP = 4;
    public static final int SOLOADER_SKIP_MERGED_JNI_ONLOAD = 16;
    private static final String SO_STORE_NAME_MAIN = "lib-main";
    private static final String SO_STORE_NAME_SPLIT = "lib-";
    static final boolean SYSTRACE_LIBRARY_LOADING;
    static final String TAG = "SoLoader";
    private static boolean isSystemApp;

    @GuardedBy("sSoSourcesLock")
    @Nullable
    private static ApplicationSoSource sApplicationSoSource;

    @GuardedBy("sSoSourcesLock")
    @Nullable
    private static UnpackingSoSource[] sBackupSoSources;

    @GuardedBy("sSoSourcesLock")
    private static int sFlags;

    @Nullable
    static SoFileLoader sSoFileLoader;
    private static final ReentrantReadWriteLock sSoSourcesLock = new ReentrantReadWriteLock();

    @GuardedBy("sSoSourcesLock")
    @Nullable
    private static SoSource[] sSoSources = null;

    @GuardedBy("sSoSourcesLock")
    private static volatile int sSoSourcesVersion = 0;

    @GuardedBy("SoLoader.class")
    private static final HashSet<String> sLoadedLibraries = new HashSet<>();

    @GuardedBy("SoLoader.class")
    private static final Map<String, Object> sLoadingLibraries = new HashMap();
    private static final Set<String> sLoadedAndMergedLibraries = Collections.newSetFromMap(new ConcurrentHashMap());

    @Nullable
    private static SystemLoadLibraryWrapper sSystemLoadLibraryWrapper = null;

    static /* synthetic */ int access$208() {
        int i = sSoSourcesVersion;
        sSoSourcesVersion = i + 1;
        return i;
    }

    static {
        boolean z = false;
        try {
            if (Build.VERSION.SDK_INT >= 18) {
                z = true;
            }
        } catch (NoClassDefFoundError | UnsatisfiedLinkError unused) {
        }
        SYSTRACE_LIBRARY_LOADING = z;
    }

    public static void init(Context context, int i) throws IOException {
        init(context, i, null);
    }

    public static void init(Context context, int i, @Nullable SoFileLoader soFileLoader) throws IOException {
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        try {
            isSystemApp = checkIfSystemApp(context, i);
            initSoLoader(soFileLoader);
            initSoSources(context, i, soFileLoader);
            if (!NativeLoader.isInitialized()) {
                NativeLoader.init(new NativeLoaderToSoLoaderDelegate());
            }
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
        }
    }

    public static void init(Context context, boolean z) {
        try {
            init(context, z ? 1 : 0);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static void initSoSources(Context context, int i, @Nullable SoFileLoader soFileLoader) throws IOException {
        int i2;
        sSoSourcesLock.writeLock().lock();
        try {
            if (sSoSources == null) {
                Log.d(TAG, "init start");
                sFlags = i;
                ArrayList arrayList = new ArrayList();
                String str = System.getenv("LD_LIBRARY_PATH");
                if (str == null) {
                    str = SysUtil.is64Bit() ? "/vendor/lib64:/system/lib64" : "/vendor/lib:/system/lib";
                }
                for (String str2 : str.split(":")) {
                    Log.d(TAG, "adding system library source: " + str2);
                    arrayList.add(new DirectorySoSource(new File(str2), 2));
                }
                if (context != null) {
                    if ((i & 1) != 0) {
                        sBackupSoSources = null;
                        Log.d(TAG, "adding exo package source: lib-main");
                        arrayList.add(0, new ExoSoSource(context, SO_STORE_NAME_MAIN));
                    } else {
                        if (isSystemApp) {
                            i2 = 0;
                        } else {
                            sApplicationSoSource = new ApplicationSoSource(context, Build.VERSION.SDK_INT <= 17 ? 1 : 0);
                            Log.d(TAG, "adding application source: " + sApplicationSoSource.toString());
                            arrayList.add(0, sApplicationSoSource);
                            i2 = 1;
                        }
                        if ((sFlags & 8) != 0) {
                            sBackupSoSources = null;
                        } else {
                            File file = new File(context.getApplicationInfo().sourceDir);
                            ArrayList arrayList2 = new ArrayList();
                            ApkSoSource apkSoSource = new ApkSoSource(context, file, SO_STORE_NAME_MAIN, i2);
                            arrayList2.add(apkSoSource);
                            Log.d(TAG, "adding backup source from : " + apkSoSource.toString());
                            if (Build.VERSION.SDK_INT >= 21 && context.getApplicationInfo().splitSourceDirs != null) {
                                Log.d(TAG, "adding backup sources from split apks");
                                String[] strArr = context.getApplicationInfo().splitSourceDirs;
                                int length = strArr.length;
                                int i3 = 0;
                                int i4 = 0;
                                while (i3 < length) {
                                    ApkSoSource apkSoSource2 = new ApkSoSource(context, new File(strArr[i3]), SO_STORE_NAME_SPLIT + i4, i2);
                                    Log.d(TAG, "adding backup source: " + apkSoSource2.toString());
                                    arrayList2.add(apkSoSource2);
                                    i3++;
                                    i4++;
                                }
                            }
                            sBackupSoSources = (UnpackingSoSource[]) arrayList2.toArray(new UnpackingSoSource[arrayList2.size()]);
                            arrayList.addAll(0, arrayList2);
                        }
                    }
                }
                SoSource[] soSourceArr = (SoSource[]) arrayList.toArray(new SoSource[arrayList.size()]);
                int makePrepareFlags = makePrepareFlags();
                int length2 = soSourceArr.length;
                while (true) {
                    int i5 = length2 - 1;
                    if (length2 <= 0) {
                        break;
                    }
                    Log.d(TAG, "Preparing SO source: " + soSourceArr[i5]);
                    soSourceArr[i5].prepare(makePrepareFlags);
                    length2 = i5;
                }
                sSoSources = soSourceArr;
                sSoSourcesVersion++;
                Log.d(TAG, "init finish: " + sSoSources.length + " SO sources prepared");
            }
        } finally {
            Log.d(TAG, "init exiting");
            sSoSourcesLock.writeLock().unlock();
        }
    }

    private static int makePrepareFlags() {
        sSoSourcesLock.writeLock().lock();
        try {
            return (sFlags & 2) != 0 ? 1 : 0;
        } finally {
            sSoSourcesLock.writeLock().unlock();
        }
    }

    private static synchronized void initSoLoader(@Nullable SoFileLoader soFileLoader) {
        synchronized (SoLoader.class) {
            if (soFileLoader != null) {
                sSoFileLoader = soFileLoader;
                return;
            }
            final Runtime runtime = Runtime.getRuntime();
            final Method nativeLoadRuntimeMethod = getNativeLoadRuntimeMethod();
            final boolean z = nativeLoadRuntimeMethod != null;
            final String classLoaderLdLoadLibrary = z ? Api14Utils.getClassLoaderLdLoadLibrary() : null;
            final String makeNonZipPath = makeNonZipPath(classLoaderLdLoadLibrary);
            sSoFileLoader = new SoFileLoader() { // from class: com.facebook.soloader.SoLoader.1
                /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
                    jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:29:0x006d
                    	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
                    	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
                    	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
                    */
                /* JADX WARN: Removed duplicated region for block: B:36:0x008e  */
                @Override // com.facebook.soloader.SoFileLoader
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public void load(java.lang.String r9, int r10) {
                    /*
                        r8 = this;
                        boolean r0 = r1
                        if (r0 == 0) goto Lb9
                        r0 = 4
                        r10 = r10 & r0
                        r1 = 0
                        r2 = 1
                        if (r10 != r0) goto Lc
                        r10 = r2
                        goto Ld
                    Lc:
                        r10 = r1
                    Ld:
                        if (r10 == 0) goto L12
                        java.lang.String r10 = r2
                        goto L14
                    L12:
                        java.lang.String r10 = r3
                    L14:
                        r0 = 0
                        java.lang.Runtime r3 = r4     // Catch: java.lang.Throwable -> L70 java.lang.Throwable -> L72
                        monitor-enter(r3)     // Catch: java.lang.Throwable -> L70 java.lang.Throwable -> L72
                        java.lang.reflect.Method r4 = r5     // Catch: java.lang.Throwable -> L6d
                        java.lang.Runtime r5 = r4     // Catch: java.lang.Throwable -> L6d
                        r6 = 3
                        java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L6d
                        r6[r1] = r9     // Catch: java.lang.Throwable -> L6d
                        java.lang.Class<com.facebook.soloader.SoLoader> r1 = com.facebook.soloader.SoLoader.class
                        java.lang.ClassLoader r1 = r1.getClassLoader()     // Catch: java.lang.Throwable -> L6d
                        r6[r2] = r1     // Catch: java.lang.Throwable -> L6d
                        r1 = 2
                        r6[r1] = r10     // Catch: java.lang.Throwable -> L6d
                        java.lang.Object r1 = r4.invoke(r5, r6)     // Catch: java.lang.Throwable -> L6d
                        java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L6d
                        if (r1 != 0) goto L62
                        monitor-exit(r3)     // Catch: java.lang.Throwable -> L68
                        if (r1 == 0) goto Lbc
                        java.lang.String r0 = "SoLoader"
                        java.lang.StringBuilder r2 = new java.lang.StringBuilder
                        r2.<init>()
                        java.lang.String r3 = "Error when loading lib: "
                        r2.append(r3)
                        r2.append(r1)
                        java.lang.String r1 = " lib hash: "
                        r2.append(r1)
                        java.lang.String r8 = r8.getLibHash(r9)
                        r2.append(r8)
                        java.lang.String r8 = " search path is "
                        r2.append(r8)
                        r2.append(r10)
                        java.lang.String r8 = r2.toString()
                        android.util.Log.e(r0, r8)
                        goto Lbc
                    L62:
                        java.lang.UnsatisfiedLinkError r0 = new java.lang.UnsatisfiedLinkError     // Catch: java.lang.Throwable -> L68
                        r0.<init>(r1)     // Catch: java.lang.Throwable -> L68
                        throw r0     // Catch: java.lang.Throwable -> L68
                    L68:
                        r0 = move-exception
                        r7 = r1
                        r1 = r0
                        r0 = r7
                        goto L6e
                    L6d:
                        r1 = move-exception
                    L6e:
                        monitor-exit(r3)     // Catch: java.lang.Throwable -> L6d
                        throw r1     // Catch: java.lang.Throwable -> L70 java.lang.Throwable -> L72 java.lang.Throwable -> L72 java.lang.Throwable -> L72
                    L70:
                        r1 = move-exception
                        goto L8c
                    L72:
                        r1 = move-exception
                        java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L70
                        r2.<init>()     // Catch: java.lang.Throwable -> L70
                        java.lang.String r3 = "Error: Cannot load "
                        r2.append(r3)     // Catch: java.lang.Throwable -> L70
                        r2.append(r9)     // Catch: java.lang.Throwable -> L70
                        java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L70
                        java.lang.RuntimeException r0 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> L8a
                        r0.<init>(r2, r1)     // Catch: java.lang.Throwable -> L8a
                        throw r0     // Catch: java.lang.Throwable -> L8a
                    L8a:
                        r1 = move-exception
                        r0 = r2
                    L8c:
                        if (r0 == 0) goto Lb8
                        java.lang.StringBuilder r2 = new java.lang.StringBuilder
                        r2.<init>()
                        java.lang.String r3 = "Error when loading lib: "
                        r2.append(r3)
                        r2.append(r0)
                        java.lang.String r0 = " lib hash: "
                        r2.append(r0)
                        java.lang.String r8 = r8.getLibHash(r9)
                        r2.append(r8)
                        java.lang.String r8 = " search path is "
                        r2.append(r8)
                        r2.append(r10)
                        java.lang.String r8 = r2.toString()
                        java.lang.String r9 = "SoLoader"
                        android.util.Log.e(r9, r8)
                    Lb8:
                        throw r1
                    Lb9:
                        java.lang.System.load(r9)
                    Lbc:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.SoLoader.AnonymousClass1.load(java.lang.String, int):void");
                }

                private String getLibHash(String str) {
                    try {
                        File file = new File(str);
                        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                        FileInputStream fileInputStream = new FileInputStream(file);
                        Throwable th = null;
                        try {
                            byte[] bArr = new byte[4096];
                            while (true) {
                                int read = fileInputStream.read(bArr);
                                if (read > 0) {
                                    messageDigest.update(bArr, 0, read);
                                } else {
                                    String format = String.format("%32x", new BigInteger(1, messageDigest.digest()));
                                    fileInputStream.close();
                                    return format;
                                }
                            }
                        } finally {
                        }
                    } catch (IOException e) {
                        return e.toString();
                    } catch (SecurityException e2) {
                        return e2.toString();
                    } catch (NoSuchAlgorithmException e3) {
                        return e3.toString();
                    }
                }
            };
        }
    }

    @Nullable
    private static Method getNativeLoadRuntimeMethod() {
        if (Build.VERSION.SDK_INT < 23 || Build.VERSION.SDK_INT > 27) {
            return null;
        }
        try {
            Method declaredMethod = Runtime.class.getDeclaredMethod("nativeLoad", String.class, ClassLoader.class, String.class);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (NoSuchMethodException | SecurityException e) {
            Log.w(TAG, "Cannot get nativeLoad method", e);
            return null;
        }
    }

    private static boolean checkIfSystemApp(Context context, int i) {
        return ((i & 32) != 0 || context == null || (context.getApplicationInfo().flags & 129) == 0) ? false : true;
    }

    public static void setInTestMode() {
        TestOnlyUtils.setSoSources(new SoSource[]{new NoopSoSource()});
    }

    public static void deinitForTest() {
        TestOnlyUtils.setSoSources(null);
    }

    @NotThreadSafe
    /* loaded from: /home/user/work/dex/classes3.dex */
    static class TestOnlyUtils {
        TestOnlyUtils() {
        }

        static void setSoSources(SoSource[] soSourceArr) {
            SoLoader.sSoSourcesLock.writeLock().lock();
            try {
                SoSource[] unused = SoLoader.sSoSources = soSourceArr;
                SoLoader.access$208();
            } finally {
                SoLoader.sSoSourcesLock.writeLock().unlock();
            }
        }

        static void setSoFileLoader(SoFileLoader soFileLoader) {
            SoLoader.sSoFileLoader = soFileLoader;
        }

        static void resetStatus() {
            synchronized (SoLoader.class) {
                SoLoader.sLoadedLibraries.clear();
                SoLoader.sLoadingLibraries.clear();
                SoLoader.sSoFileLoader = null;
            }
            setSoSources(null);
        }
    }

    public static void setSystemLoadLibraryWrapper(SystemLoadLibraryWrapper systemLoadLibraryWrapper) {
        sSystemLoadLibraryWrapper = systemLoadLibraryWrapper;
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class WrongAbiError extends UnsatisfiedLinkError {
        WrongAbiError(Throwable th, String str) {
            super("APK was built for a different platform. Supported ABIs: " + Arrays.toString(SysUtil.getSupportedAbis()) + " error: " + str);
            initCause(th);
        }
    }

    @Nullable
    public static String getLibraryPath(String str) throws IOException {
        sSoSourcesLock.readLock().lock();
        try {
            String str2 = null;
            if (sSoSources != null) {
                int i = 0;
                while (str2 == null) {
                    if (i >= sSoSources.length) {
                        break;
                    }
                    str2 = sSoSources[i].getLibraryPath(str);
                    i++;
                }
            }
            return str2;
        } finally {
            sSoSourcesLock.readLock().unlock();
        }
    }

    @Nullable
    public static String[] getLibraryDependencies(String str) throws IOException {
        sSoSourcesLock.readLock().lock();
        try {
            String[] strArr = null;
            if (sSoSources != null) {
                int i = 0;
                while (strArr == null) {
                    if (i >= sSoSources.length) {
                        break;
                    }
                    strArr = sSoSources[i].getLibraryDependencies(str);
                    i++;
                }
            }
            return strArr;
        } finally {
            sSoSourcesLock.readLock().unlock();
        }
    }

    public static boolean loadLibrary(String str) {
        return loadLibrary(str, 0);
    }

    public static boolean loadLibrary(String str, int i) throws UnsatisfiedLinkError {
        boolean z;
        sSoSourcesLock.readLock().lock();
        try {
            if (sSoSources == null) {
                if ("http://www.android.com/".equals(System.getProperty("java.vendor.url"))) {
                    assertInitialized();
                } else {
                    synchronized (SoLoader.class) {
                        z = !sLoadedLibraries.contains(str);
                        if (z) {
                            if (sSystemLoadLibraryWrapper != null) {
                                sSystemLoadLibraryWrapper.loadLibrary(str);
                            } else {
                                System.loadLibrary(str);
                            }
                        }
                    }
                    return z;
                }
            }
            sSoSourcesLock.readLock().unlock();
            if (isSystemApp && sSystemLoadLibraryWrapper != null) {
                sSystemLoadLibraryWrapper.loadLibrary(str);
                return true;
            }
            String mapLibName = MergedSoMapping.mapLibName(str);
            return loadLibraryBySoName(System.mapLibraryName(mapLibName != null ? mapLibName : str), str, mapLibName, i, null);
        } finally {
            sSoSourcesLock.readLock().unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void loadLibraryBySoName(String str, int i, StrictMode.ThreadPolicy threadPolicy) {
        loadLibraryBySoNameImpl(str, null, null, i, threadPolicy);
    }

    private static boolean loadLibraryBySoName(String str, @Nullable String str2, @Nullable String str3, int i, @Nullable StrictMode.ThreadPolicy threadPolicy) {
        boolean z;
        boolean z2 = false;
        do {
            try {
                z = false;
                z2 = loadLibraryBySoNameImpl(str, str2, str3, i, threadPolicy);
            } catch (UnsatisfiedLinkError e) {
                int i2 = sSoSourcesVersion;
                sSoSourcesLock.writeLock().lock();
                try {
                    try {
                        z = true;
                        if (sApplicationSoSource == null || !sApplicationSoSource.checkAndMaybeUpdate()) {
                            z = false;
                        } else {
                            Log.w(TAG, "sApplicationSoSource updated during load: " + str + ", attempting load again.");
                            sSoSourcesVersion = sSoSourcesVersion + 1;
                        }
                        sSoSourcesLock.writeLock().unlock();
                        if (sSoSourcesVersion == i2) {
                            throw e;
                        }
                    } catch (IOException e2) {
                        throw new RuntimeException(e2);
                    }
                } catch (Throwable th) {
                    sSoSourcesLock.writeLock().unlock();
                    throw th;
                }
            }
        } while (z);
        return z2;
    }

    private static boolean loadLibraryBySoNameImpl(String str, @Nullable String str2, @Nullable String str3, int i, @Nullable StrictMode.ThreadPolicy threadPolicy) {
        boolean z;
        Object obj;
        boolean z2 = false;
        if (!TextUtils.isEmpty(str2) && sLoadedAndMergedLibraries.contains(str2)) {
            return false;
        }
        synchronized (SoLoader.class) {
            if (!sLoadedLibraries.contains(str)) {
                z = false;
            } else {
                if (str3 == null) {
                    return false;
                }
                z = true;
            }
            if (sLoadingLibraries.containsKey(str)) {
                obj = sLoadingLibraries.get(str);
            } else {
                obj = new Object();
                sLoadingLibraries.put(str, obj);
            }
            synchronized (obj) {
                if (!z) {
                    try {
                        synchronized (SoLoader.class) {
                            if (sLoadedLibraries.contains(str)) {
                                if (str3 == null) {
                                    return false;
                                }
                                z = true;
                            }
                            if (!z) {
                                try {
                                    Log.d(TAG, "About to load: " + str);
                                    doLoadLibraryBySoName(str, i, threadPolicy);
                                    synchronized (SoLoader.class) {
                                        Log.d(TAG, "Loaded: " + str);
                                        sLoadedLibraries.add(str);
                                    }
                                } catch (UnsatisfiedLinkError e) {
                                    String message = e.getMessage();
                                    if (message != null && message.contains("unexpected e_machine:")) {
                                        throw new WrongAbiError(e, message.substring(message.lastIndexOf("unexpected e_machine:")));
                                    }
                                    throw e;
                                }
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if ((i & 16) == 0) {
                    if (!TextUtils.isEmpty(str2) && sLoadedAndMergedLibraries.contains(str2)) {
                        z2 = true;
                    }
                    if (str3 != null && !z2) {
                        if (SYSTRACE_LIBRARY_LOADING) {
                            Api18TraceUtils.beginTraceSection("MergedSoMapping.invokeJniOnload[", str2, "]");
                        }
                        try {
                            try {
                                Log.d(TAG, "About to merge: " + str2 + " / " + str);
                                MergedSoMapping.invokeJniOnload(str2);
                                sLoadedAndMergedLibraries.add(str2);
                            } catch (UnsatisfiedLinkError e2) {
                                throw new RuntimeException("Failed to call JNI_OnLoad from '" + str2 + "', which has been merged into '" + str + "'.  See comment for details.", e2);
                            }
                        } finally {
                            if (SYSTRACE_LIBRARY_LOADING) {
                                Api18TraceUtils.endSection();
                            }
                        }
                    }
                }
                return !z;
            }
        }
    }

    public static File unpackLibraryAndDependencies(String str) throws UnsatisfiedLinkError {
        assertInitialized();
        try {
            return unpackLibraryBySoName(System.mapLibraryName(str));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0157 A[LOOP:2: B:67:0x0152->B:69:0x0157, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0176  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void doLoadLibraryBySoName(String str, int i, @Nullable StrictMode.ThreadPolicy threadPolicy) throws UnsatisfiedLinkError {
        boolean z;
        int i2;
        String message;
        sSoSourcesLock.readLock().lock();
        try {
            if (sSoSources == null) {
                Log.e(TAG, "Could not load: " + str + " because no SO source exists");
                throw new UnsatisfiedLinkError("couldn't find DSO to load: " + str);
            }
            sSoSourcesLock.readLock().unlock();
            int i3 = 0;
            if (threadPolicy == null) {
                threadPolicy = StrictMode.allowThreadDiskReads();
                z = true;
            } else {
                z = false;
            }
            if (SYSTRACE_LIBRARY_LOADING) {
                Api18TraceUtils.beginTraceSection("SoLoader.loadLibrary[", str, "]");
            }
            try {
                sSoSourcesLock.readLock().lock();
                int i4 = 0;
                int i5 = 0;
                while (i4 == 0) {
                    try {
                        if (i5 < sSoSources.length) {
                            i2 = sSoSources[i5].loadLibrary(str, i, threadPolicy);
                            if (i2 == 3) {
                                try {
                                    if (sBackupSoSources != null) {
                                        Log.d(TAG, "Trying backup SoSource for " + str);
                                        UnpackingSoSource[] unpackingSoSourceArr = sBackupSoSources;
                                        int length = unpackingSoSourceArr.length;
                                        int i6 = 0;
                                        while (true) {
                                            if (i6 >= length) {
                                                break;
                                            }
                                            UnpackingSoSource unpackingSoSource = unpackingSoSourceArr[i6];
                                            unpackingSoSource.prepare(str);
                                            int loadLibrary = unpackingSoSource.loadLibrary(str, i, threadPolicy);
                                            if (loadLibrary == 1) {
                                                i2 = loadLibrary;
                                                break;
                                            }
                                            i6++;
                                        }
                                        i4 = i2;
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        if (SYSTRACE_LIBRARY_LOADING) {
                                        }
                                        if (z) {
                                        }
                                        if (i2 != 0) {
                                        }
                                        StringBuilder sb = new StringBuilder();
                                        sb.append("couldn't find DSO to load: ");
                                        sb.append(str);
                                        sSoSourcesLock.readLock().lock();
                                        while (i3 < sSoSources.length) {
                                        }
                                        if (sApplicationSoSource != null) {
                                        }
                                        sSoSourcesLock.readLock().unlock();
                                        sb.append(" result: ");
                                        sb.append(i2);
                                        String sb2 = sb.toString();
                                        Log.e(TAG, sb2);
                                        throw new UnsatisfiedLinkError(sb2);
                                    }
                                }
                            }
                            i5++;
                            i4 = i2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        i2 = i4;
                    }
                }
                try {
                    if (SYSTRACE_LIBRARY_LOADING) {
                        Api18TraceUtils.endSection();
                    }
                    if (z) {
                        StrictMode.setThreadPolicy(threadPolicy);
                    }
                    if (i4 == 0 || i4 == 3) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("couldn't find DSO to load: ");
                        sb3.append(str);
                        sSoSourcesLock.readLock().lock();
                        while (i3 < sSoSources.length) {
                            sb3.append("\n\tSoSource ");
                            sb3.append(i3);
                            sb3.append(": ");
                            sb3.append(sSoSources[i3].toString());
                            i3++;
                        }
                        if (sApplicationSoSource != null) {
                            File nativeLibDirFromContext = ApplicationSoSource.getNativeLibDirFromContext(sApplicationSoSource.getUpdatedContext());
                            sb3.append("\n\tNative lib dir: ");
                            sb3.append(nativeLibDirFromContext.getAbsolutePath());
                            sb3.append("\n");
                        }
                        sSoSourcesLock.readLock().unlock();
                        sb3.append(" result: ");
                        sb3.append(i4);
                        String sb4 = sb3.toString();
                        Log.e(TAG, sb4);
                        throw new UnsatisfiedLinkError(sb4);
                    }
                } catch (Throwable th4) {
                    th = th4;
                    i2 = i4;
                    if (SYSTRACE_LIBRARY_LOADING) {
                        Api18TraceUtils.endSection();
                    }
                    if (z) {
                        StrictMode.setThreadPolicy(threadPolicy);
                    }
                    if (i2 != 0 || i2 == 3) {
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("couldn't find DSO to load: ");
                        sb5.append(str);
                        message = th.getMessage();
                        if (message == null) {
                            message = th.toString();
                        }
                        sb5.append(" caused by: ");
                        sb5.append(message);
                        th.printStackTrace();
                        sb5.append(" result: ");
                        sb5.append(i2);
                        String sb6 = sb5.toString();
                        Log.e(TAG, sb6);
                        throw new UnsatisfiedLinkError(sb6);
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                i2 = 0;
            }
        } finally {
            sSoSourcesLock.readLock().unlock();
        }
    }

    @Nullable
    public static String makeNonZipPath(String str) {
        if (str == null) {
            return null;
        }
        String[] split = str.split(":");
        ArrayList arrayList = new ArrayList(split.length);
        for (String str2 : split) {
            if (!str2.contains("!")) {
                arrayList.add(str2);
            }
        }
        return TextUtils.join(":", arrayList);
    }

    static File unpackLibraryBySoName(String str) throws IOException {
        sSoSourcesLock.readLock().lock();
        try {
            for (SoSource soSource : sSoSources) {
                File unpackLibrary = soSource.unpackLibrary(str);
                if (unpackLibrary != null) {
                    return unpackLibrary;
                }
            }
            sSoSourcesLock.readLock().unlock();
            throw new FileNotFoundException(str);
        } finally {
            sSoSourcesLock.readLock().unlock();
        }
    }

    private static void assertInitialized() {
        if (!isInitialized()) {
            throw new RuntimeException("SoLoader.init() not yet called");
        }
    }

    public static boolean isInitialized() {
        sSoSourcesLock.readLock().lock();
        try {
            return sSoSources != null;
        } finally {
            sSoSourcesLock.readLock().unlock();
        }
    }

    public static int getSoSourcesVersion() {
        return sSoSourcesVersion;
    }

    public static void prependSoSource(SoSource soSource) throws IOException {
        sSoSourcesLock.writeLock().lock();
        try {
            Log.d(TAG, "Prepending to SO sources: " + soSource);
            assertInitialized();
            soSource.prepare(makePrepareFlags());
            SoSource[] soSourceArr = new SoSource[sSoSources.length + 1];
            soSourceArr[0] = soSource;
            System.arraycopy(sSoSources, 0, soSourceArr, 1, sSoSources.length);
            sSoSources = soSourceArr;
            sSoSourcesVersion++;
            Log.d(TAG, "Prepended to SO sources: " + soSource);
        } finally {
            sSoSourcesLock.writeLock().unlock();
        }
    }

    public static String makeLdLibraryPath() {
        sSoSourcesLock.readLock().lock();
        try {
            assertInitialized();
            Log.d(TAG, "makeLdLibraryPath");
            ArrayList arrayList = new ArrayList();
            SoSource[] soSourceArr = sSoSources;
            if (soSourceArr != null) {
                for (SoSource soSource : soSourceArr) {
                    soSource.addToLdLibraryPath(arrayList);
                }
            }
            String join = TextUtils.join(":", arrayList);
            Log.d(TAG, "makeLdLibraryPath final path: " + join);
            return join;
        } finally {
            sSoSourcesLock.readLock().unlock();
        }
    }

    public static boolean areSoSourcesAbisSupported() {
        sSoSourcesLock.readLock().lock();
        try {
            if (sSoSources == null) {
                return false;
            }
            String[] supportedAbis = SysUtil.getSupportedAbis();
            for (SoSource soSource : sSoSources) {
                for (String str : soSource.getSoSourceAbis()) {
                    boolean z = false;
                    for (int i = 0; i < supportedAbis.length && !z; i++) {
                        z = str.equals(supportedAbis[i]);
                    }
                    if (!z) {
                        Log.e(TAG, "abi not supported: " + str);
                        return false;
                    }
                }
            }
            sSoSourcesLock.readLock().unlock();
            return true;
        } finally {
            sSoSourcesLock.readLock().unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @DoNotOptimize
    @TargetApi(14)
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class Api14Utils {
        private Api14Utils() {
        }

        public static String getClassLoaderLdLoadLibrary() {
            ClassLoader classLoader = SoLoader.class.getClassLoader();
            if (classLoader != null && !(classLoader instanceof BaseDexClassLoader)) {
                throw new IllegalStateException("ClassLoader " + classLoader.getClass().getName() + " should be of type BaseDexClassLoader");
            }
            try {
                return (String) BaseDexClassLoader.class.getMethod("getLdLibraryPath", new Class[0]).invoke((BaseDexClassLoader) classLoader, new Object[0]);
            } catch (Exception e) {
                throw new RuntimeException("Cannot call getLdLibraryPath", e);
            }
        }
    }
}
