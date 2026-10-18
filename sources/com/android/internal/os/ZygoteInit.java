package com.android.internal.os;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.icu.impl.CacheValue;
import android.icu.text.DecimalFormatSymbols;
import android.icu.util.ULocale;
import android.opengl.EGL14;
import android.os.Build;
import android.os.Environment;
import android.os.IInstalld;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.ServiceSpecificException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.os.ZygoteProcess;
import android.os.storage.StorageManager;
import android.security.keystore.AndroidKeyStoreProvider;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructCapUserData;
import android.system.StructCapUserHeader;
import android.text.Hyphenator;
import android.util.EventLog;
import android.util.Log;
import android.util.TimingsTraceLog;
import android.webkit.WebViewFactory;
import android.widget.TextView;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.os.RuntimeInit;
import com.android.internal.os.ZygoteConnection;
import com.android.internal.telephony.PhoneConstants;
import com.android.internal.util.Preconditions;
import com.media.common.util.AppConstants;
import dalvik.system.DexFile;
import dalvik.system.VMRuntime;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.Provider;
import java.security.Security;
import libcore.io.IoUtils;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ZygoteInit {
    private static final String ABI_LIST_ARG = "--abi-list=";
    private static final int LOG_BOOT_PROGRESS_PRELOAD_END = 3030;
    private static final int LOG_BOOT_PROGRESS_PRELOAD_START = 3020;
    private static final String PRELOADED_CLASSES = "/system/etc/preloaded-classes";
    private static final String PRELOADED_SECOND_STAGE_CLASSES = "/system/etc/preloaded-classes-secondlist";
    private static final int PRELOAD_GC_THRESHOLD = 50000;
    public static final boolean PRELOAD_RESOURCES = true;
    private static final String PROPERTY_DISABLE_OPENGL_PRELOADING = "ro.zygote.disable_gl_preload";
    private static final String PROPERTY_GFX_DRIVER = "ro.gfx.driver.0";
    private static final int ROOT_GID = 0;
    private static final int ROOT_UID = 0;
    private static final String SOCKET_NAME_ARG = "--socket-name=";
    private static final String TAG = "Zygote";
    private static final int UNPRIVILEGED_GID = 9999;
    private static final int UNPRIVILEGED_UID = 9999;
    private static Resources mResources = null;
    private static boolean sMtprofDisable = false;
    private static boolean sPreloadComplete;

    private static native void nativePreloadAppProcessHALs();

    private static final native void nativeZygoteInit();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x0043 -> B:13:0x004a). Please report as a decompilation issue!!! */
    private static void addBootEvent(String str) {
        FileOutputStream fileOutputStream;
        if (sMtprofDisable) {
            return;
        }
        ?? r0 = 0;
        r0 = 0;
        FileOutputStream fileOutputStream2 = null;
        FileOutputStream fileOutputStream3 = null;
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream("/proc/bootprof");
                } catch (Throwable th) {
                    th = th;
                }
            } catch (FileNotFoundException e) {
                e = e;
            } catch (IOException e2) {
                e = e2;
            }
        } catch (IOException e3) {
            Log.e("BOOTPROF", "Failure close /proc/bootprof entry", e3);
            r0 = "BOOTPROF";
        }
        try {
            fileOutputStream.write(str.getBytes());
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (FileNotFoundException e4) {
            e = e4;
            fileOutputStream2 = fileOutputStream;
            Log.e("BOOTPROF", "Failure open /proc/bootprof, not found!", e);
            r0 = fileOutputStream2;
            if (fileOutputStream2 != null) {
                fileOutputStream2.close();
                r0 = fileOutputStream2;
            }
        } catch (IOException e5) {
            e = e5;
            fileOutputStream3 = fileOutputStream;
            Log.e("BOOTPROF", "Failure open /proc/bootprof entry", e);
            r0 = fileOutputStream3;
            if (fileOutputStream3 != null) {
                fileOutputStream3.close();
                r0 = fileOutputStream3;
            }
        } catch (Throwable th2) {
            th = th2;
            r0 = fileOutputStream;
            if (r0 != 0) {
                try {
                    r0.close();
                } catch (IOException e6) {
                    Log.e("BOOTPROF", "Failure close /proc/bootprof entry", e6);
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void preload(TimingsTraceLog timingsTraceLog) {
        addBootEvent("Zygote:Preload Start...");
        Log.d(TAG, "begin preload");
        Thread thread = new Thread(new Runnable() { // from class: com.android.internal.os.ZygoteInit.1
            @Override // java.lang.Runnable
            public void run() {
                ZygoteInit.preloadResources();
            }
        });
        Thread thread2 = new Thread(new Runnable() { // from class: com.android.internal.os.ZygoteInit.2
            @Override // java.lang.Runnable
            public void run() {
                ZygoteInit.preloadClasses();
            }
        });
        thread.start();
        thread2.start();
        beginIcuCachePinning();
        nativePreloadAppProcessHALs();
        preloadOpenGL();
        preloadSharedLibraries();
        preloadTextResources();
        WebViewFactory.prepareWebViewInZygote();
        endIcuCachePinning();
        warmUpJcaProviders();
        try {
            thread.join();
            thread2.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        Log.d(TAG, "end preload");
        addBootEvent("Zygote:Preload End...");
        sPreloadComplete = true;
    }

    public static void lazyPreload() {
        Preconditions.checkState(!sPreloadComplete);
        Log.i(TAG, "Lazily preloading resources.");
        preload(new TimingsTraceLog("ZygoteInitTiming_lazy", 16384L));
    }

    private static void beginIcuCachePinning() {
        Log.i(TAG, "Installing ICU cache reference pinning...");
        CacheValue.setStrength(CacheValue.Strength.STRONG);
        Log.i(TAG, "Preloading ICU data...");
        for (ULocale uLocale : new ULocale[]{ULocale.ROOT, ULocale.US, ULocale.getDefault()}) {
            new DecimalFormatSymbols(uLocale);
        }
    }

    private static void endIcuCachePinning() {
        CacheValue.setStrength(CacheValue.Strength.SOFT);
        Log.i(TAG, "Uninstalled ICU cache reference pinning...");
    }

    private static void preloadSharedLibraries() {
        Log.i(TAG, "Preloading shared libraries...");
        System.loadLibrary("android");
        System.loadLibrary("compiler_rt");
        System.loadLibrary("jnigraphics");
    }

    private static void preloadOpenGL() {
        String str = SystemProperties.get(PROPERTY_GFX_DRIVER);
        if (SystemProperties.getBoolean(PROPERTY_DISABLE_OPENGL_PRELOADING, false)) {
            return;
        }
        if (str == null || str.isEmpty()) {
            EGL14.eglGetDisplay(0);
        }
    }

    private static void preloadTextResources() {
        Hyphenator.init();
        TextView.preloadFontCache();
    }

    private static void warmUpJcaProviders() {
        long uptimeMillis = SystemClock.uptimeMillis();
        Trace.traceBegin(16384L, "Starting installation of AndroidKeyStoreProvider");
        AndroidKeyStoreProvider.install();
        Log.i(TAG, "Installed AndroidKeyStoreProvider in " + (SystemClock.uptimeMillis() - uptimeMillis) + "ms.");
        Trace.traceEnd(16384L);
        long uptimeMillis2 = SystemClock.uptimeMillis();
        Trace.traceBegin(16384L, "Starting warm up of JCA providers");
        for (Provider provider : Security.getProviders()) {
            provider.warmUpServiceProvision();
        }
        Log.i(TAG, "Warmed up JCA providers in " + (SystemClock.uptimeMillis() - uptimeMillis2) + "ms.");
        Trace.traceEnd(16384L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void preloadClasses() {
        boolean z;
        int i;
        StringBuilder sb;
        VMRuntime runtime = VMRuntime.getRuntime();
        try {
            FileInputStream fileInputStream = new FileInputStream(PRELOADED_CLASSES);
            Log.i(TAG, "Preloading classes...");
            long uptimeMillis = SystemClock.uptimeMillis();
            int i2 = Os.getuid();
            int i3 = Os.getgid();
            boolean z2 = true;
            if (i2 == 0 && i3 == 0) {
                try {
                    Os.setregid(0, 9999);
                    Os.setreuid(0, 9999);
                    z = true;
                } catch (ErrnoException e) {
                    throw new RuntimeException("Failed to drop root", e);
                }
            } else {
                z = false;
            }
            float targetHeapUtilization = runtime.getTargetHeapUtilization();
            runtime.setTargetHeapUtilization(0.8f);
            try {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream), 256);
                    i = 0;
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            String trim = readLine.trim();
                            if (!trim.startsWith("#") && !trim.equals("")) {
                                Trace.traceBegin(16384L, trim);
                                try {
                                    Class.forName(trim, z2, null);
                                    i++;
                                } catch (ClassNotFoundException unused) {
                                    Log.w(TAG, "Class not found for preloading: " + trim);
                                } catch (UnsatisfiedLinkError e2) {
                                    Log.w(TAG, "Problem preloading " + trim + ": " + e2);
                                } catch (Throwable th) {
                                    Log.e(TAG, "Error preloading " + trim + ".", th);
                                    if (th instanceof Error) {
                                        throw ((Error) th);
                                    }
                                    if (!(th instanceof RuntimeException)) {
                                        throw new RuntimeException(th);
                                    }
                                    throw ((RuntimeException) th);
                                }
                                Trace.traceEnd(16384L);
                            }
                            z2 = true;
                        } catch (IOException e3) {
                            e = e3;
                            Log.e(TAG, "Error reading /system/etc/preloaded-classes.", e);
                            IoUtils.closeQuietly(fileInputStream);
                            runtime.setTargetHeapUtilization(targetHeapUtilization);
                            Trace.traceBegin(16384L, "PreloadDexCaches");
                            runtime.preloadDexCaches();
                            Trace.traceEnd(16384L);
                            if (z) {
                                try {
                                    Os.setreuid(0, 0);
                                    Os.setregid(0, 0);
                                } catch (ErrnoException e4) {
                                    throw new RuntimeException("Failed to restore root", e4);
                                }
                            }
                            sb = new StringBuilder();
                            sb.append("Zygote:Preload ");
                            sb.append(i);
                            sb.append(" classes in ");
                            sb.append(SystemClock.uptimeMillis() - uptimeMillis);
                            sb.append("ms");
                            addBootEvent(sb.toString());
                        }
                    }
                    Log.i(TAG, "...preloaded " + i + " classes in " + (SystemClock.uptimeMillis() - uptimeMillis) + "ms.");
                    IoUtils.closeQuietly(fileInputStream);
                    runtime.setTargetHeapUtilization(targetHeapUtilization);
                    Trace.traceBegin(16384L, "PreloadDexCaches");
                    runtime.preloadDexCaches();
                    Trace.traceEnd(16384L);
                    if (z) {
                        try {
                            Os.setreuid(0, 0);
                            Os.setregid(0, 0);
                        } catch (ErrnoException e5) {
                            throw new RuntimeException("Failed to restore root", e5);
                        }
                    }
                    sb = new StringBuilder();
                } catch (Throwable th2) {
                    th = th2;
                    IoUtils.closeQuietly(fileInputStream);
                    runtime.setTargetHeapUtilization(targetHeapUtilization);
                    Trace.traceBegin(16384L, "PreloadDexCaches");
                    runtime.preloadDexCaches();
                    Trace.traceEnd(16384L);
                    if (z) {
                        try {
                            Os.setreuid(0, 0);
                            Os.setregid(0, 0);
                        } catch (ErrnoException e6) {
                            throw new RuntimeException("Failed to restore root", e6);
                        }
                    }
                    addBootEvent("Zygote:Preload 0 classes in " + (SystemClock.uptimeMillis() - uptimeMillis) + "ms");
                    throw th;
                }
            } catch (IOException e7) {
                e = e7;
                i = 0;
            } catch (Throwable th3) {
                th = th3;
                IoUtils.closeQuietly(fileInputStream);
                runtime.setTargetHeapUtilization(targetHeapUtilization);
                Trace.traceBegin(16384L, "PreloadDexCaches");
                runtime.preloadDexCaches();
                Trace.traceEnd(16384L);
                if (z) {
                }
                addBootEvent("Zygote:Preload 0 classes in " + (SystemClock.uptimeMillis() - uptimeMillis) + "ms");
                throw th;
            }
            sb.append("Zygote:Preload ");
            sb.append(i);
            sb.append(" classes in ");
            sb.append(SystemClock.uptimeMillis() - uptimeMillis);
            sb.append("ms");
            addBootEvent(sb.toString());
        } catch (FileNotFoundException unused2) {
            Log.e(TAG, "Couldn't find /system/etc/preloaded-classes.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void preloadSecondStageClasses() {
        try {
            FileInputStream fileInputStream = new FileInputStream(PRELOADED_SECOND_STAGE_CLASSES);
            Log.i(TAG, "Preloading Second Stage classes...");
            try {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream), 256);
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        String trim = readLine.trim();
                        if (!trim.startsWith("#") && !trim.equals("")) {
                            try {
                                Class.forName(trim, true, null);
                            } catch (ClassNotFoundException unused) {
                                Log.w(TAG, "Class not found for preloading: " + trim);
                            } catch (UnsatisfiedLinkError e) {
                                Log.w(TAG, "Problem preloading " + trim + ": " + e);
                            } catch (Throwable th) {
                                Log.e(TAG, "Error preloading " + trim + ".", th);
                                if (th instanceof Error) {
                                    throw ((Error) th);
                                }
                                if (th instanceof RuntimeException) {
                                    throw ((RuntimeException) th);
                                }
                                throw new RuntimeException(th);
                            }
                        }
                    }
                } catch (IOException e2) {
                    Log.e(TAG, "Error reading /system/etc/preloaded-classes-secondlist.", e2);
                }
            } finally {
                IoUtils.closeQuietly(fileInputStream);
            }
        } catch (FileNotFoundException unused2) {
            Log.e(TAG, "Couldn't find /system/etc/preloaded-classes-secondlist.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void preloadResources() {
        VMRuntime.getRuntime();
        try {
            mResources = Resources.getSystem();
            mResources.startPreloading();
            Log.i(TAG, "Preloading resources...");
            long uptimeMillis = SystemClock.uptimeMillis();
            TypedArray obtainTypedArray = mResources.obtainTypedArray(17236068);
            int preloadDrawables = preloadDrawables(obtainTypedArray);
            obtainTypedArray.recycle();
            Log.i(TAG, "...preloaded " + preloadDrawables + " resources in " + (SystemClock.uptimeMillis() - uptimeMillis) + "ms.");
            addBootEvent("Zygote:Preload " + preloadDrawables + " obtain resources in " + (SystemClock.uptimeMillis() - uptimeMillis) + "ms");
            long uptimeMillis2 = SystemClock.uptimeMillis();
            TypedArray obtainTypedArray2 = mResources.obtainTypedArray(17236067);
            int preloadColorStateLists = preloadColorStateLists(obtainTypedArray2);
            obtainTypedArray2.recycle();
            Log.i(TAG, "...preloaded " + preloadColorStateLists + " resources in " + (SystemClock.uptimeMillis() - uptimeMillis2) + "ms.");
            if (mResources.getBoolean(17956977)) {
                uptimeMillis2 = SystemClock.uptimeMillis();
                TypedArray obtainTypedArray3 = mResources.obtainTypedArray(17236069);
                preloadColorStateLists = preloadDrawables(obtainTypedArray3);
                obtainTypedArray3.recycle();
                Log.i(TAG, "...preloaded " + preloadColorStateLists + " resource in " + (SystemClock.uptimeMillis() - uptimeMillis2) + "ms.");
            }
            addBootEvent("Zygote:Preload " + preloadColorStateLists + " resources in " + (SystemClock.uptimeMillis() - uptimeMillis2) + "ms");
            mResources.finishPreloading();
        } catch (RuntimeException e) {
            Log.w(TAG, "Failure preloading resources", e);
        }
    }

    private static int preloadColorStateLists(TypedArray typedArray) {
        int length = typedArray.length();
        for (int i = 0; i < length; i++) {
            int resourceId = typedArray.getResourceId(i, 0);
            if (resourceId != 0 && mResources.getColorStateList(resourceId, null) == null) {
                throw new IllegalArgumentException("Unable to find preloaded color resource #0x" + Integer.toHexString(resourceId) + " (" + typedArray.getString(i) + ")");
            }
        }
        return length;
    }

    private static int preloadDrawables(TypedArray typedArray) {
        int length = typedArray.length();
        for (int i = 0; i < length; i++) {
            int resourceId = typedArray.getResourceId(i, 0);
            if (resourceId != 0 && mResources.getDrawable(resourceId, null) == null) {
                throw new IllegalArgumentException("Unable to find preloaded drawable resource #0x" + Integer.toHexString(resourceId) + " (" + typedArray.getString(i) + ")");
            }
        }
        return length;
    }

    static void gcAndFinalize() {
        VMRuntime runtime = VMRuntime.getRuntime();
        System.gc();
        runtime.runFinalizationSync();
        System.gc();
    }

    private static Runnable handleSystemServerProcess(ZygoteConnection.Arguments arguments) {
        String[] strArr;
        Os.umask(OsConstants.S_IRWXG | OsConstants.S_IRWXO);
        if (arguments.niceName != null) {
            Process.setArgV0(arguments.niceName);
        }
        String str = Os.getenv("SYSTEMSERVERCLASSPATH");
        if (str != null) {
            performSystemServerDexOpt(str);
            if (SystemProperties.getBoolean("dalvik.vm.profilesystemserver", false) && (Build.IS_USERDEBUG || Build.IS_ENG)) {
                try {
                    prepareSystemServerProfile(str);
                } catch (Exception e) {
                    Log.wtf(TAG, "Failed to set up system server profile", e);
                }
            }
        }
        if (arguments.invokeWith != null) {
            String[] strArr2 = arguments.remainingArgs;
            if (str != null) {
                String[] strArr3 = new String[strArr2.length + 2];
                strArr3[0] = "-cp";
                strArr3[1] = str;
                System.arraycopy(strArr2, 0, strArr3, 2, strArr2.length);
                strArr = strArr3;
            } else {
                strArr = strArr2;
            }
            WrapperInit.execApplication(arguments.invokeWith, arguments.niceName, arguments.targetSdkVersion, VMRuntime.getCurrentInstructionSet(), null, strArr);
            throw new IllegalStateException("Unexpected return from WrapperInit.execApplication");
        }
        ClassLoader classLoader = null;
        if (str != null) {
            classLoader = createPathClassLoader(str, arguments.targetSdkVersion);
            Thread.currentThread().setContextClassLoader(classLoader);
        }
        return zygoteInit(arguments.targetSdkVersion, arguments.remainingArgs, classLoader);
    }

    private static void prepareSystemServerProfile(String str) throws RemoteException {
        if (str.isEmpty()) {
            return;
        }
        String[] split = str.split(":");
        IInstalld.Stub.asInterface(ServiceManager.getService("installd")).prepareAppProfile("android", 0, UserHandle.getAppId(1000), "primary.prof", split[0], (String) null);
        VMRuntime.registerAppInfo(new File(Environment.getDataProfilesDePackageDirectory(0, "android"), "primary.prof").getAbsolutePath(), split);
    }

    public static void setApiBlacklistExemptions(String[] strArr) {
        VMRuntime.getRuntime().setHiddenApiExemptions(strArr);
    }

    public static void setHiddenApiAccessLogSampleRate(int i) {
        VMRuntime.getRuntime().setHiddenApiAccessLogSamplingRate(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ClassLoader createPathClassLoader(String str, int i) {
        String property = System.getProperty("java.library.path");
        return ClassLoaderFactory.createClassLoader(str, property, property, ClassLoader.getSystemClassLoader(), i, true, null);
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 5 */
    private static void performSystemServerDexOpt(String str) {
        int i;
        int i2;
        int i3;
        String str2;
        String str3;
        String[] split = str.split(":");
        IInstalld asInterface = IInstalld.Stub.asInterface(ServiceManager.getService("installd"));
        String vmInstructionSet = VMRuntime.getRuntime().vmInstructionSet();
        int length = split.length;
        String str4 = "";
        int i4 = 0;
        while (i4 < length) {
            String str5 = split[i4];
            String str6 = SystemProperties.get("dalvik.vm.systemservercompilerfilter", "speed");
            try {
                i = DexFile.getDexOptNeeded(str5, vmInstructionSet, str6, null, false, false);
            } catch (FileNotFoundException unused) {
                i2 = i4;
                i3 = length;
                Log.w(TAG, "Missing classpath element for system server: " + str5);
                str4 = str4;
            } catch (IOException e) {
                Log.w(TAG, "Error checking classpath element for system server: " + str5, e);
                i = 0;
            }
            if (i != 0) {
                String str7 = str4;
                i2 = i4;
                i3 = length;
                try {
                    asInterface.dexopt(str5, 1000, PhoneConstants.APN_TYPE_ALL, vmInstructionSet, i, (String) null, 0, str6, StorageManager.UUID_PRIVATE_INTERNAL, getSystemServerClassLoaderContext(str4), (String) null, false, 0, (String) null, (String) null, "server-dexopt");
                    str2 = str5;
                } catch (RemoteException | ServiceSpecificException e2) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Failed compiling classpath element for system server: ");
                    str2 = str5;
                    sb.append(str2);
                    Log.w(TAG, sb.toString(), e2);
                }
                str3 = str7;
            } else {
                str2 = str5;
                i2 = i4;
                i3 = length;
                str3 = str4;
            }
            str4 = encodeSystemServerClassPath(str3, str2);
            i4 = i2 + 1;
            length = i3;
        }
    }

    private static String getSystemServerClassLoaderContext(String str) {
        if (str == null) {
            return "PCL[]";
        }
        return "PCL[" + str + "]";
    }

    private static String encodeSystemServerClassPath(String str, String str2) {
        if (str == null || str.isEmpty()) {
            return str2;
        }
        return str + ":" + str2;
    }

    private static Runnable forkSystemServer(String str, String str2, ZygoteServer zygoteServer) {
        long posixCapabilitiesAsBits = posixCapabilitiesAsBits(OsConstants.CAP_IPC_LOCK, OsConstants.CAP_KILL, OsConstants.CAP_NET_ADMIN, OsConstants.CAP_NET_BIND_SERVICE, OsConstants.CAP_NET_BROADCAST, OsConstants.CAP_NET_RAW, OsConstants.CAP_SYS_MODULE, OsConstants.CAP_SYS_NICE, OsConstants.CAP_SYS_PTRACE, OsConstants.CAP_SYS_TIME, OsConstants.CAP_SYS_TTY_CONFIG, OsConstants.CAP_WAKE_ALARM, OsConstants.CAP_BLOCK_SUSPEND);
        try {
            StructCapUserData[] capget = Os.capget(new StructCapUserHeader(OsConstants._LINUX_CAPABILITY_VERSION_3, 0));
            long j = posixCapabilitiesAsBits & (capget[0].effective | (capget[1].effective << 32));
            try {
                ZygoteConnection.Arguments arguments = new ZygoteConnection.Arguments(new String[]{"--setuid=1000", "--setgid=1000", "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1014,1018,1021,1023,1024,1032,1065,3001,3002,3003,3006,3007,3009,3010", "--capabilities=" + j + "," + j, "--nice-name=system_server", "--runtime-args", "--target-sdk-version=10000", "com.android.server.SystemServer"});
                ZygoteConnection.applyDebuggerSystemProperty(arguments);
                ZygoteConnection.applyInvokeWithSystemProperty(arguments);
                if (SystemProperties.getBoolean("dalvik.vm.profilesystemserver", false)) {
                    arguments.runtimeFlags |= 16384;
                }
                if (Zygote.forkSystemServer(arguments.uid, arguments.gid, arguments.gids, arguments.runtimeFlags, null, arguments.permittedCapabilities, arguments.effectiveCapabilities) != 0) {
                    return null;
                }
                zygoteServer.closeServerSocket();
                return handleSystemServerProcess(arguments);
            } catch (IllegalArgumentException e) {
                throw new RuntimeException(e);
            }
        } catch (ErrnoException e2) {
            throw new RuntimeException("Failed to capget()", e2);
        }
    }

    private static long posixCapabilitiesAsBits(int... iArr) {
        long j = 0;
        for (int i : iArr) {
            if (i < 0 || i > OsConstants.CAP_LAST_CAP) {
                throw new IllegalArgumentException(String.valueOf(i));
            }
            j |= 1 << i;
        }
        return j;
    }

    public static void main(String[] strArr) {
        ZygoteServer zygoteServer = new ZygoteServer();
        try {
            try {
                Os.setpgid(0, 0);
                try {
                    String str = null;
                    if (!AppConstants.VALUE_SHOW.equals(SystemProperties.get("sys.boot_completed"))) {
                        MetricsLogger.histogram(null, "boot_zygote_init", (int) SystemClock.elapsedRealtime());
                    }
                    TimingsTraceLog timingsTraceLog = new TimingsTraceLog(Process.is64Bit() ? "Zygote64Timing" : "Zygote32Timing", 16384L);
                    timingsTraceLog.traceBegin("ZygoteInit");
                    RuntimeInit.enableDdms();
                    boolean z = false;
                    boolean z2 = false;
                    String str2 = "zygote";
                    for (int i = 1; i < strArr.length; i++) {
                        if ("start-system-server".equals(strArr[i])) {
                            z2 = true;
                        } else if ("--enable-lazy-preload".equals(strArr[i])) {
                            z = true;
                        } else if (strArr[i].startsWith(ABI_LIST_ARG)) {
                            str = strArr[i].substring(ABI_LIST_ARG.length());
                        } else if (strArr[i].startsWith(SOCKET_NAME_ARG)) {
                            str2 = strArr[i].substring(SOCKET_NAME_ARG.length());
                        } else {
                            throw new RuntimeException("Unknown command line argument: " + strArr[i]);
                        }
                    }
                    if (str == null) {
                        throw new RuntimeException("No ABI list supplied.");
                    }
                    zygoteServer.registerServerSocketFromEnv(str2);
                    if (!z) {
                        timingsTraceLog.traceBegin("ZygotePreload");
                        EventLog.writeEvent(LOG_BOOT_PROGRESS_PRELOAD_START, SystemClock.uptimeMillis());
                        preload(timingsTraceLog);
                        new Thread(new Runnable() { // from class: com.android.internal.os.ZygoteInit.3
                            @Override // java.lang.Runnable
                            public void run() {
                                ZygoteInit.preloadSecondStageClasses();
                            }
                        }).start();
                        EventLog.writeEvent(LOG_BOOT_PROGRESS_PRELOAD_END, SystemClock.uptimeMillis());
                        timingsTraceLog.traceEnd();
                    } else {
                        Zygote.resetNicePriority();
                    }
                    timingsTraceLog.traceBegin("PostZygoteInitGC");
                    gcAndFinalize();
                    timingsTraceLog.traceEnd();
                    timingsTraceLog.traceEnd();
                    Trace.setTracingEnabled(false, 0);
                    Zygote.nativeSecurityInit();
                    Zygote.nativeUnmountStorageOnInit();
                    if (z2) {
                        addBootEvent("Zygote: start fork SystemServer");
                        Runnable forkSystemServer = forkSystemServer(str, str2, zygoteServer);
                        if (forkSystemServer != null) {
                            forkSystemServer.run();
                            return;
                        }
                    }
                    Log.i(TAG, "Accepting command socket connections");
                    Runnable runSelectLoop = zygoteServer.runSelectLoop(str);
                    if (runSelectLoop != null) {
                        runSelectLoop.run();
                    }
                } catch (Throwable th) {
                    Log.e(TAG, "System zygote died with exception", th);
                    throw th;
                }
            } catch (ErrnoException e) {
                throw new RuntimeException("Failed to setpgid(0,0)", e);
            }
        } finally {
            zygoteServer.closeServerSocket();
        }
    }

    private static boolean hasSecondZygote(String str) {
        return !SystemProperties.get("ro.product.cpu.abilist").equals(str);
    }

    private static void waitForSecondaryZygote(String str) {
        ZygoteProcess.waitForConnectionToZygote("zygote".equals(str) ? "zygote_secondary" : "zygote");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isPreloadComplete() {
        return sPreloadComplete;
    }

    private ZygoteInit() {
    }

    public static final Runnable zygoteInit(int i, String[] strArr, ClassLoader classLoader) {
        Trace.traceBegin(64L, "ZygoteInit");
        RuntimeInit.redirectLogStreams();
        RuntimeInit.commonInit();
        nativeZygoteInit();
        return RuntimeInit.applicationInit(i, strArr, classLoader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final Runnable childZygoteInit(int i, String[] strArr, ClassLoader classLoader) {
        RuntimeInit.Arguments arguments = new RuntimeInit.Arguments(strArr);
        return RuntimeInit.findStaticMain(arguments.startClass, arguments.startArgs, classLoader);
    }
}
