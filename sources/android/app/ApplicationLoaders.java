package android.app;

import android.os.Build;
import android.os.GraphicsEnvironment;
import android.os.Trace;
import android.util.ArrayMap;
import com.android.internal.os.ClassLoaderFactory;
import dalvik.system.PathClassLoader;
import java.util.Collection;

/* loaded from: /home/user/work/dex/classes.dex */
public class ApplicationLoaders {
    private static final ApplicationLoaders gApplicationLoaders = new ApplicationLoaders();
    private final ArrayMap<String, ClassLoader> mLoaders = new ArrayMap<>();

    public static ApplicationLoaders getDefault() {
        return gApplicationLoaders;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ClassLoader getClassLoader(String str, int i, boolean z, String str2, String str3, ClassLoader classLoader, String str4) {
        return getClassLoader(str, i, z, str2, str3, classLoader, str, str4);
    }

    private ClassLoader getClassLoader(String str, int i, boolean z, String str2, String str3, ClassLoader classLoader, String str4, String str5) {
        ClassLoader parent = ClassLoader.getSystemClassLoader().getParent();
        synchronized (this.mLoaders) {
            ClassLoader classLoader2 = classLoader == null ? parent : classLoader;
            try {
                if (classLoader2 == parent) {
                    ClassLoader classLoader3 = this.mLoaders.get(str4);
                    if (classLoader3 != null) {
                        return classLoader3;
                    }
                    Trace.traceBegin(64L, str);
                    ClassLoader createClassLoader = ClassLoaderFactory.createClassLoader(str, str2, str3, classLoader2, i, z, str5);
                    Trace.traceEnd(64L);
                    Trace.traceBegin(64L, "setLayerPaths");
                    GraphicsEnvironment.getInstance().setLayerPaths(createClassLoader, str2, str3);
                    Trace.traceEnd(64L);
                    this.mLoaders.put(str4, createClassLoader);
                    return createClassLoader;
                }
                Trace.traceBegin(64L, str);
                ClassLoader createClassLoader2 = ClassLoaderFactory.createClassLoader(str, (String) null, classLoader2, str5);
                Trace.traceEnd(64L);
                return createClassLoader2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public ClassLoader createAndCacheWebViewClassLoader(String str, String str2, String str3) {
        return getClassLoader(str, Build.VERSION.SDK_INT, false, str2, null, null, str3, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addPath(ClassLoader classLoader, String str) {
        if (!(classLoader instanceof PathClassLoader)) {
            throw new IllegalStateException("class loader is not a PathClassLoader");
        }
        ((PathClassLoader) classLoader).addDexPath(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addNative(ClassLoader classLoader, Collection<String> collection) {
        if (!(classLoader instanceof PathClassLoader)) {
            throw new IllegalStateException("class loader is not a PathClassLoader");
        }
        ((PathClassLoader) classLoader).addNativePath(collection);
    }
}
