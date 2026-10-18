package com.facebook.soloader.nativeloader;

import java.io.IOException;

/* loaded from: /home/user/work/dex/classes3.dex */
public class NativeLoader {
    private static NativeLoaderDelegate sDelegate;

    private NativeLoader() {
    }

    public static boolean loadLibrary(String str) {
        return loadLibrary(str, 0);
    }

    public static boolean loadLibrary(String str, int i) {
        synchronized (NativeLoader.class) {
            if (sDelegate == null) {
                throw new IllegalStateException("NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate()).");
            }
        }
        return sDelegate.loadLibrary(str, i);
    }

    public static String getLibraryPath(String str) throws IOException {
        synchronized (NativeLoader.class) {
            if (sDelegate == null) {
                throw new IllegalStateException("NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate()).");
            }
        }
        return sDelegate.getLibraryPath(str);
    }

    public static int getSoSourcesVersion() {
        synchronized (NativeLoader.class) {
            if (sDelegate == null) {
                throw new IllegalStateException("NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate()).");
            }
        }
        return sDelegate.getSoSourcesVersion();
    }

    public static synchronized void init(NativeLoaderDelegate nativeLoaderDelegate) {
        synchronized (NativeLoader.class) {
            if (sDelegate != null) {
                throw new IllegalStateException("Cannot re-initialize NativeLoader.");
            }
            sDelegate = nativeLoaderDelegate;
        }
    }

    public static synchronized boolean isInitialized() {
        boolean z;
        synchronized (NativeLoader.class) {
            z = sDelegate != null;
        }
        return z;
    }
}
