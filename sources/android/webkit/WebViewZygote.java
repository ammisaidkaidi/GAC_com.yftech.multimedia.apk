package android.webkit;

import android.app.ActivityThread;
import android.app.LoadedApk;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.AsyncTask;
import android.os.Build;
import android.os.ChildZygoteProcess;
import android.os.Process;
import android.os.ZygoteProcess;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.annotations.GuardedBy;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes2.dex */
public class WebViewZygote {
    private static final String LOGTAG = "WebViewZygote";
    private static final Object sLock = new Object();

    @GuardedBy("sLock")
    private static boolean sMultiprocessEnabled = false;

    @GuardedBy("sLock")
    private static PackageInfo sPackage;

    @GuardedBy("sLock")
    private static ApplicationInfo sPackageOriginalAppInfo;

    @GuardedBy("sLock")
    private static ChildZygoteProcess sZygote;

    public static ZygoteProcess getProcess() {
        synchronized (sLock) {
            if (sZygote != null) {
                return sZygote;
            }
            connectToZygoteIfNeededLocked();
            return sZygote;
        }
    }

    public static String getPackageName() {
        String str;
        synchronized (sLock) {
            str = sPackage.packageName;
        }
        return str;
    }

    public static boolean isMultiprocessEnabled() {
        boolean z;
        synchronized (sLock) {
            z = sMultiprocessEnabled && sPackage != null;
        }
        return z;
    }

    public static void setMultiprocessEnabled(boolean z) {
        synchronized (sLock) {
            sMultiprocessEnabled = z;
            if (z) {
                AsyncTask.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: android.webkit.-$$Lambda$xYTrYQCPf1HcdlWzDof3mq93ihs
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebViewZygote.getProcess();
                    }
                });
            } else {
                stopZygoteLocked();
            }
        }
    }

    public static void onWebViewProviderChanged(PackageInfo packageInfo, ApplicationInfo applicationInfo) {
        synchronized (sLock) {
            sPackage = packageInfo;
            sPackageOriginalAppInfo = applicationInfo;
            if (sMultiprocessEnabled) {
                stopZygoteLocked();
            }
        }
    }

    @GuardedBy("sLock")
    private static void stopZygoteLocked() {
        if (sZygote != null) {
            sZygote.close();
            Process.killProcess(sZygote.getPid());
            sZygote = null;
        }
    }

    @GuardedBy("sLock")
    private static void connectToZygoteIfNeededLocked() {
        if (sZygote != null) {
            return;
        }
        if (sPackage == null) {
            Log.e(LOGTAG, "Cannot connect to zygote, no package specified");
            return;
        }
        try {
            sZygote = Process.zygoteProcess.startChildZygote("com.android.internal.os.WebViewZygoteInit", "webview_zygote", Process.WEBVIEW_ZYGOTE_UID, Process.WEBVIEW_ZYGOTE_UID, null, 0, "webview_zygote", sPackage.applicationInfo.primaryCpuAbi, null);
            ArrayList arrayList = new ArrayList(10);
            ArrayList arrayList2 = new ArrayList(10);
            LoadedApk.makePaths((ActivityThread) null, false, sPackage.applicationInfo, arrayList, arrayList2);
            String join = TextUtils.join(File.pathSeparator, arrayList2);
            String join2 = arrayList.size() == 1 ? (String) arrayList.get(0) : TextUtils.join(File.pathSeparator, arrayList);
            String webViewLibrary = WebViewFactory.getWebViewLibrary(sPackage.applicationInfo);
            LoadedApk.makePaths((ActivityThread) null, false, sPackageOriginalAppInfo, arrayList, (List) null);
            String join3 = arrayList.size() == 1 ? (String) arrayList.get(0) : TextUtils.join(File.pathSeparator, arrayList);
            ZygoteProcess.waitForConnectionToZygote(sZygote.getPrimarySocketAddress());
            Log.d(LOGTAG, "Preloading package " + join2 + " " + join);
            sZygote.preloadPackageForAbi(join2, join, webViewLibrary, join3, Build.SUPPORTED_ABIS[0]);
        } catch (Exception e) {
            Log.e(LOGTAG, "Error connecting to webview zygote", e);
            stopZygoteLocked();
        }
    }
}
