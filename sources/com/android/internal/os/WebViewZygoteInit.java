package com.android.internal.os;

import android.app.ApplicationLoaders;
import android.net.LocalSocket;
import android.os.Build;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebViewFactory;
import android.webkit.WebViewLibraryLoader;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;

/* loaded from: /home/user/work/dex/classes3.dex */
class WebViewZygoteInit {
    public static final String TAG = "WebViewZygoteInit";
    private static ZygoteServer sServer;

    WebViewZygoteInit() {
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    private static class WebViewZygoteServer extends ZygoteServer {
        private WebViewZygoteServer() {
        }

        @Override // com.android.internal.os.ZygoteServer
        protected ZygoteConnection createNewConnection(LocalSocket localSocket, String str) throws IOException {
            return new WebViewZygoteConnection(localSocket, str);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    private static class WebViewZygoteConnection extends ZygoteConnection {
        @Override // com.android.internal.os.ZygoteConnection
        protected boolean isPreloadComplete() {
            return true;
        }

        @Override // com.android.internal.os.ZygoteConnection
        protected void preload() {
        }

        WebViewZygoteConnection(LocalSocket localSocket, String str) throws IOException {
            super(localSocket, str);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v0, types: [com.android.internal.os.WebViewZygoteInit$WebViewZygoteConnection] */
        /* JADX WARN: Type inference failed for: r3v1 */
        /* JADX WARN: Type inference failed for: r3v2, types: [com.android.internal.os.WebViewZygoteInit$WebViewZygoteConnection] */
        /* JADX WARN: Type inference failed for: r3v4, types: [java.io.DataOutputStream] */
        @Override // com.android.internal.os.ZygoteConnection
        protected void handlePreloadPackage(String str, String str2, String str3, String str4) {
            boolean z;
            Log.i(WebViewZygoteInit.TAG, "Beginning package preload");
            ClassLoader createAndCacheWebViewClassLoader = ApplicationLoaders.getDefault().createAndCacheWebViewClassLoader(str, str2, str4);
            WebViewLibraryLoader.loadNativeLibrary(createAndCacheWebViewClassLoader, str3);
            for (String str5 : TextUtils.split(str, File.pathSeparator)) {
                Zygote.nativeAllowFileAcrossFork(str5);
            }
            int i = 1;
            try {
                Class webViewProviderClass = WebViewFactory.getWebViewProviderClass(createAndCacheWebViewClassLoader);
                Method method = webViewProviderClass.getMethod("preloadInZygote", new Class[0]);
                method.setAccessible(true);
                if (method.getReturnType() != Boolean.TYPE) {
                    Log.e(WebViewZygoteInit.TAG, "Unexpected return type: preloadInZygote must return boolean");
                    z = false;
                } else {
                    z = ((Boolean) webViewProviderClass.getMethod("preloadInZygote", new Class[0]).invoke(null, new Object[0])).booleanValue();
                    if (!z) {
                        try {
                            Log.e(WebViewZygoteInit.TAG, "preloadInZygote returned false");
                        } catch (ReflectiveOperationException e) {
                            Log.e(WebViewZygoteInit.TAG, "Exception while preloading package", e);
                            z = z;
                        }
                    }
                }
            } catch (ReflectiveOperationException e2) {
                Log.e(WebViewZygoteInit.TAG, "Exception while preloading package", e2);
                z = false;
            }
            try {
                this = this.getSocketOutputStream();
                if (!z) {
                    i = 0;
                }
                this.writeInt(i);
                Log.i(WebViewZygoteInit.TAG, "Package preload done");
            } catch (IOException e3) {
                throw new IllegalStateException("Error writing to command socket", e3);
            }
        }
    }

    public static void main(String[] strArr) {
        Log.i(TAG, "Starting WebViewZygoteInit");
        String str = null;
        for (String str2 : strArr) {
            Log.i(TAG, str2);
            if (str2.startsWith(Zygote.CHILD_ZYGOTE_SOCKET_NAME_ARG)) {
                str = str2.substring(Zygote.CHILD_ZYGOTE_SOCKET_NAME_ARG.length());
            }
        }
        if (str == null) {
            throw new RuntimeException("No --zygote-socket= specified");
        }
        try {
            Os.prctl(OsConstants.PR_SET_NO_NEW_PRIVS, 1L, 0L, 0L, 0L);
            sServer = new WebViewZygoteServer();
            try {
                try {
                    sServer.registerServerSocketAtAbstractName(str);
                    Zygote.nativeAllowFileAcrossFork("ABSTRACT/" + str);
                    Runnable runSelectLoop = sServer.runSelectLoop(TextUtils.join(",", Build.SUPPORTED_ABIS));
                    if (runSelectLoop != null) {
                        runSelectLoop.run();
                    }
                } finally {
                    sServer.closeServerSocket();
                }
            } catch (RuntimeException e) {
                Log.e(TAG, "Fatal exception:", e);
                throw e;
            }
        } catch (ErrnoException e2) {
            throw new RuntimeException("Failed to set PR_SET_NO_NEW_PRIVS", e2);
        }
    }
}
